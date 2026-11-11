# Installs (or reinstalls) the latest Hearth on a Windows PC, from PowerShell:
#
#   irm https://raw.githubusercontent.com/songbird2077-dev/hearth-releases/main/install.ps1 | iex
#
# What it does, in order:
#   1. Reads the list of the newest release (latest.json) from GitHub.
#   2. Picks the installer for this PC (x64, or arm64 for Arm PCs such as Surface Pro X
#      and Snapdragon laptops), downloads it and checks its size and SHA-256 against that list.
#   3. Runs the installer quietly. Hearth installs for you only, in
#      %LOCALAPPDATA%\Programs\Hearth, with Start menu and desktop shortcuts. No admin needed.
#   4. Opens Hearth, and says whether Git for Windows (which Claude Code needs) is installed.
# If any check fails, nothing is installed. Downloads made this way skip the "Windows protected
# your PC" step, because the checks above have already confirmed the file.
#
# What it trusts: GitHub. This script and latest.json both come from Hearth's GitHub repos, so
# the checksum proves the download is the file the release lists, not who made the release.
# (Windows PowerShell 5.1 can't check latest.json.sig, which uses Ed25519.) Once installed,
# Hearth checks that signature on every update.
#
# Works in Windows PowerShell 5.1 (built into Windows 10 and 11) and PowerShell 7.

& {
  $ErrorActionPreference = 'Stop'
  $ProgressPreference = 'SilentlyContinue'   # the progress bar makes downloads much slower in 5.1

  $repo = 'songbird2077-dev/hearth-releases'
  $feedUrl = if ($env:HEARTH_INSTALL_FEED) { $env:HEARTH_INSTALL_FEED } else { "https://github.com/$repo/releases/latest/download/latest.json" }

  function Stop-Install([string]$why) {
    Write-Host ''
    Write-Host "Hearth was not installed: $why" -ForegroundColor Red
    # throw (not exit): exit would close the PowerShell window that ran `irm | iex`.
    throw 'Hearth install stopped.'
  }

  try {
    if ([Environment]::OSVersion.Platform -ne 'Win32NT') { Stop-Install 'this installer is for Windows. On a Mac, use the Terminal command in the Hearth readme.' }
    if ([Environment]::OSVersion.Version.Major -lt 10) { Stop-Install 'Hearth needs Windows 10 or 11.' }
    try { [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12 } catch { }

    # The PC's own architecture, even when this PowerShell runs as x64 on an Arm PC.
    $arch = 'x64'
    try {
      $os = [System.Runtime.InteropServices.RuntimeInformation]::OSArchitecture.ToString()
      if ($os -eq 'Arm64') { $arch = 'arm64' }
    } catch {
      if ($env:PROCESSOR_ARCHITECTURE -eq 'ARM64' -or $env:PROCESSOR_ARCHITEW6432 -eq 'ARM64') { $arch = 'arm64' }
    }

    Write-Host 'Checking for the latest Hearth...'
    try { $feed = Invoke-RestMethod -Uri $feedUrl -UseBasicParsing -TimeoutSec 60 }
    catch { Stop-Install "couldn't reach GitHub. Check your internet connection and try again." }

    $key = "win-$arch"
    $asset = $null
    # "installers" lists the setup.exe files ("assets" is the update zips the app itself reads).
    if ($feed.installers) { $asset = $feed.installers.$key }
    if (-not $asset) { Stop-Install "there is no Windows ($arch) version of Hearth $($feed.version) yet." }
    $url = [string]$asset.url
    $sha = ([string]$asset.sha256).ToLowerInvariant()
    $size = [int64]$asset.size
    if (-not $url.StartsWith("https://github.com/$repo/releases/download/")) { Stop-Install "the release list points somewhere other than Hearth's releases page." }
    if ($sha -notmatch '^[0-9a-f]{64}$') { Stop-Install 'the release list has no valid checksum.' }
    $name = [IO.Path]::GetFileName(([Uri]$url).AbsolutePath)
    if ($name -notmatch '^Hearth-[0-9][0-9A-Za-z.\-]*-win-(x64|arm64)-setup\.exe$') { Stop-Install "the release list names an unexpected file ($name)." }

    $dir = Join-Path ([IO.Path]::GetTempPath()) ('hearth-install-' + [Guid]::NewGuid().ToString('N'))
    New-Item -ItemType Directory -Path $dir | Out-Null
    $exe = Join-Path $dir $name
    try {
      Write-Host "Downloading Hearth $($feed.version) for $arch ($([math]::Round($size / 1MB)) MB)..."
      try { Invoke-WebRequest -Uri $url -OutFile $exe -UseBasicParsing -TimeoutSec 1800 }
      catch { Stop-Install "the download didn't finish. Try again." }

      if ($size -gt 0 -and (Get-Item -LiteralPath $exe).Length -ne $size) { Stop-Install 'the download is the wrong size. Try again in a minute.' }
      $got = (Get-FileHash -LiteralPath $exe -Algorithm SHA256).Hash.ToLowerInvariant()
      if ($got -ne $sha) { Stop-Install "the download doesn't match its checksum. Try again in a minute." }

      if (Get-Process -Name 'Hearth' -ErrorAction SilentlyContinue) {
        Stop-Install 'Hearth is open. Quit it (right-click the Hearth icon in the tray, Quit Hearth) and run this again. Hearth also updates itself: see Settings, Updates.'
      }

      Write-Host 'Installing...'
      $p = Start-Process -FilePath $exe -ArgumentList '/S' -Wait -PassThru
      if ($p.ExitCode -ne 0) { Stop-Install "the installer stopped with code $($p.ExitCode)." }
    } finally {
      Remove-Item -LiteralPath $dir -Recurse -Force -ErrorAction SilentlyContinue
    }

    $app = Join-Path $env:LOCALAPPDATA 'Programs\Hearth\Hearth.exe'
    if (-not (Test-Path -LiteralPath $app)) { Stop-Install "the installer finished, but Hearth isn't in $(Split-Path $app)." }

    Write-Host ''
    Write-Host "Hearth $($feed.version) is installed." -ForegroundColor Green
    $git = (Get-Command git.exe -ErrorAction SilentlyContinue) -or (Test-Path (Join-Path $env:ProgramFiles 'Git\bin\bash.exe'))
    if (-not $git) {
      Write-Host 'Claude Code on Windows also needs Git for Windows (free): https://git-scm.com/downloads/win'
      Write-Host 'Hearth shows you how when it opens.'
    }
    if (-not $env:HEARTH_INSTALL_NO_OPEN) {
      Start-Process -FilePath $app
      Write-Host 'Opening Hearth...'
    }
  } catch {
    if ($_.Exception.Message -ne 'Hearth install stopped.') {
      Write-Host ''
      Write-Host "Hearth was not installed: $($_.Exception.Message)" -ForegroundColor Red
    }
  }
}
