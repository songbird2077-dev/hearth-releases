#!/bin/bash
# Installs (or reinstalls) the latest Hearth on a Mac, from Terminal:
#
#   curl -fsSL https://raw.githubusercontent.com/songbird2077-dev/hearth-releases/main/install.sh | bash
#
# What it does, in order:
#   1. Reads the list of the newest release (latest.json) from GitHub.
#   2. Downloads the Mac zip and checks its size and SHA-256 against that list.
#   3. Unpacks it and checks Hearth's signature: it must be signed by Hearth's own
#      certificate (the same one every Hearth update is checked against).
#   4. Puts Hearth.app in /Applications (or ~/Applications if that isn't writable) and opens it.
# It changes nothing else on your Mac and needs no admin password. If any check fails,
# nothing is installed. Downloads made this way skip macOS's "Open Anyway" step, because
# the checks above have already confirmed it's the real Hearth.
set -euo pipefail

REPO="songbird2077-dev/hearth-releases"
FEED="${HEARTH_INSTALL_FEED:-https://github.com/$REPO/releases/latest/download/latest.json}"
# SHA-256 of Hearth's signing certificate ("Hearth Local Signing").
CERT_SHA256="4c07ac6ba255b810f5e9efc33e660b5336864ff84c20e12cb646c841f2fe5a7d"
BUNDLE_ID="dev.songbird.hearth"

say() { printf '%s\n' "$*"; }
tmp=""
stop() { printf '\nHearth was not installed: %s\n' "$*" >&2; exit 1; }

main() {
  [ "$(uname -s)" = "Darwin" ] || stop "this installer is for Macs. On Windows, use the PowerShell command in the Hearth readme."
  [ "$(uname -m)" = "arm64" ] || stop "Hearth needs a Mac with Apple silicon (M1 or later)."

  tmp="$(mktemp -d "${TMPDIR:-/tmp}/hearth-install.XXXXXX")"
  trap 'rm -rf "$tmp"' EXIT

  say "Checking for the latest Hearth..."
  curl -fsSL --proto '=https' --tlsv1.2 --max-time 60 -o "$tmp/latest.json" "$FEED" || stop "couldn't reach GitHub. Check your internet connection and try again."

  local get version url sha size
  get() { /usr/bin/plutil -extract "$1" raw -o - "$tmp/latest.json" 2>/dev/null || true; }
  version="$(get version)"
  url="$(get assets.mac-arm64.url)"; sha="$(get assets.mac-arm64.sha256)"; size="$(get assets.mac-arm64.size)"
  if [ -z "$url" ]; then url="$(get url)"; sha="$(get sha256)"; size="$(get size)"; fi
  [ -n "$version" ] && [ -n "$url" ] && [ -n "$sha" ] || stop "the release list couldn't be read."
  case "$url" in
    "https://github.com/$REPO/releases/download/"*) ;;
    *) stop "the release list points somewhere other than Hearth's releases page." ;;
  esac
  [[ "$sha" =~ ^[0-9a-f]{64}$ ]] || stop "the release list has no valid checksum."

  say "Downloading Hearth $version..."
  curl -fL --proto '=https' --tlsv1.2 --max-time 1800 --progress-bar -o "$tmp/Hearth.zip" "$url" || stop "the download didn't finish. Try again."
  if [ -n "$size" ] && [ "$(stat -f %z "$tmp/Hearth.zip")" != "$size" ]; then stop "the download is the wrong size. Try again in a minute."; fi
  [ "$(shasum -a 256 "$tmp/Hearth.zip" | awk '{print $1}')" = "$sha" ] || stop "the download doesn't match its checksum. Try again in a minute."

  say "Checking Hearth's signature..."
  mkdir "$tmp/x"
  ditto -x -k "$tmp/Hearth.zip" "$tmp/x" || stop "the download couldn't be unpacked."
  [ "$(ls -A "$tmp/x")" = "Hearth.app" ] || stop "the download doesn't hold just Hearth.app."
  local app="$tmp/x/Hearth.app"
  codesign --verify --deep --strict "$app" 2>/dev/null || stop "Hearth's signature is broken."
  [ "$(/usr/libexec/PlistBuddy -c 'Print :CFBundleIdentifier' "$app/Contents/Info.plist" 2>/dev/null)" = "$BUNDLE_ID" ] || stop "this isn't Hearth."
  (cd "$tmp" && codesign -d --extract-certificates=cert "$app" 2>/dev/null) || true
  [ -f "$tmp/cert0" ] && [ "$(shasum -a 256 "$tmp/cert0" | awk '{print $1}')" = "$CERT_SHA256" ] || stop "Hearth isn't signed with Hearth's own certificate."

  local dest="${HEARTH_INSTALL_DEST:-/Applications}"
  if [ ! -w "$dest" ]; then dest="$HOME/Applications"; mkdir -p "$dest"; fi
  if pgrep -x Hearth >/dev/null 2>&1; then
    stop "Hearth is open. Quit it (Hearth menu, Quit Hearth) and run this again. Hearth also updates itself: see Settings, Updates."
  fi
  if [ -e "$dest/Hearth.app" ]; then
    say "Replacing the Hearth in $dest (your chats and settings are kept)..."
    mv "$dest/Hearth.app" "$tmp/old-Hearth.app" || stop "the Hearth already in $dest couldn't be moved aside."
  fi
  if ! ditto "$app" "$dest/Hearth.app"; then
    [ -e "$tmp/old-Hearth.app" ] && mv "$tmp/old-Hearth.app" "$dest/Hearth.app"
    stop "Hearth couldn't be copied into $dest."
  fi

  say ""
  say "Hearth $version is installed in $dest."
  if [ -z "${HEARTH_INSTALL_NO_OPEN:-}" ]; then
    open "$dest/Hearth.app" && say "Opening Hearth..."
  fi
}

main "$@"
