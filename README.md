# Hearth

Get things done with Claude on your computer, in plain words. No code, no commands.

Hearth is a desktop app for Mac (Apple silicon) and Windows 10 and 11 (x64 and Arm).

This page is the guide to the whole app. For what changed in each version, see the [releases](https://github.com/songbird2077-dev/hearth-releases/releases).

**Download the latest Hearth: https://github.com/songbird2077-dev/hearth-releases/releases/latest**

## Contents

1. [What Hearth is](#what-hearth-is)
2. [Install](#install)
3. [First run](#first-run)
4. [The main window](#the-main-window)
5. [How much Claude does on its own](#how-much-claude-does-on-its-own)
6. [Features](#features)
7. [Updates](#updates)
8. [Your data](#your-data)
9. [Troubleshooting](#troubleshooting)
10. [Uninstall](#uninstall)

## What Hearth is

Hearth is a friendly window onto Claude Code, the tool Anthropic makes for getting work done with Claude. You say what you need, and Claude does the work with the files you choose.

Hearth is an independent project. It is not made by Anthropic.

It is made for people who do not write code. Every feature is explained in plain words where it appears. Hearth uses the same Claude sign-in, settings, apps and chats as Claude Code.

### What you can do

- **Organize files and folders**: a tidy layout for a messy folder. Claude asks before it moves anything.
- **Write and edit documents**: draft an email from your notes, write a letter or a report, make a text clearer.
- **Research and sum things up**: a Research chat searches the web and lists every source, so you can check it.
- **Plan projects and weeks**: turn a goal or a to-do list into clear steps.
- **Work with spreadsheets and data**: clean up, total or chart a sheet, or make a new one.
- **Automate a task you repeat**: a schedule sends Claude a message at set times, like a weekly summary every Friday.
- **Work across your apps**: mail, calendar, file storage and other apps you connect on claude.ai.

### Why Hearth

- **Everything in one calm app.** Every chat in one searchable list, research with sources, and work that runs on its own.
- **Works across your whole computer.** Act on text you select in any app, capture the screen, talk out loud, or schedule work.
- **See and control what Claude does.** Review every change and undo it, choose what Claude may do alone, and lock Hearth with Touch ID or Windows Hello.
- **Make it yours.** Pick a look or have Claude design one, and add mods.

### The words Hearth uses

| In Hearth | What it means |
|---|---|
| **How much Claude does on its own** | The button at the top of a chat. Five levels, from "Ask me first" to "Never ask". |
| **Thinking** | How long Claude thinks before it answers. More thinking takes longer and uses more of your plan. |
| **Claude version** | Which Claude model answers. Default is picked for you. |
| **Apps** | Services such as mail and calendar that you connect on claude.ai, so Claude can use them. |
| **Add-ons** | Extra skills for Claude (Browse add-ons). |
| **Helpers** | Extra Claudes that a chat starts to do part of the work. |
| **Linked chats** | Chats started by another chat. They show under it in the list. |
| **Files Claude changed** | Every file Claude changed in a chat, with Undo. |
| **No specific files** | A chat without a folder of yours. Claude uses a private Hearth folder. |

**What you need**

- A Claude account with Claude Code access. A paid plan (Pro, Max, Team or Enterprise) or an Anthropic Console account works.
- A Mac with an Apple silicon chip (M1 or newer), or a PC with Windows 10 or 11.
- On Windows only: Git for Windows (free). Claude Code needs it to run commands.

You do not need to install Claude Code first. If it is missing, Hearth shows the install command and installs it for you.

## Install

Pick the way that suits you. Every way ends in the same Hearth.

### Windows

1. Open the [latest release](https://github.com/songbird2077-dev/hearth-releases/releases/latest).
2. Download the setup file that fits your PC:
   - `Hearth-<version>-win-x64-setup.exe` for most PCs (Intel or AMD).
   - `Hearth-<version>-win-arm64-setup.exe` for PCs with an Arm chip, such as a Surface Pro X or a Snapdragon laptop.
   - Not sure? Open Windows Settings, System, About, and look at "System type".
3. Run the file. Windows may show **Windows protected your PC**. Click **More info**, then **Run anyway**. You see this once, because Hearth is not signed with a certificate Microsoft knows yet.
4. Hearth installs for you only, with no administrator password. It goes to `%LOCALAPPDATA%\Programs\Hearth` and adds Start menu and desktop shortcuts. Then it opens.
5. Install [Git for Windows](https://git-scm.com/downloads/win) with the settings it suggests. If it is missing, Hearth tells you on first launch, opens the page, and has a **Check again** button.

Or, for a quicker install, open PowerShell (Start menu, type PowerShell, press Enter), paste this line and press Enter:

```powershell
irm https://raw.githubusercontent.com/songbird2077-dev/hearth-releases/main/install.ps1 | iex
```

It picks the right file for your PC, checks the download, installs Hearth and opens it. You skip the "Windows protected your PC" step.

### Mac

1. Open the [latest release](https://github.com/songbird2077-dev/hearth-releases/releases/latest).
2. Download the file ending in `-for-testers.zip` and open it.
3. Follow "Read me first" inside. In short: drag **Hearth.app** into your **Applications** folder and keep it there, because Hearth can only update itself from Applications.
4. Open Hearth. macOS says it cannot verify the developer. Click **Done** (not Move to Trash).
5. Open **System Settings, Privacy & Security**, scroll to the line about Hearth, click **Open Anyway**, and confirm with your password or Touch ID. You do this once, because Hearth is not signed by Apple yet.

Or, for a quicker install, open Terminal (in Applications, Utilities), paste this line and press Return:

```bash
curl -fsSL https://raw.githubusercontent.com/songbird2077-dev/hearth-releases/main/install.sh | bash
```

It downloads the newest Hearth, checks that it is the real one, puts it in Applications and opens it. You skip steps 3 to 5.

### The other files on the release page

The other `.zip` files in the list are for Hearth's own updater. You do not need them.

## First run

1. **Sign in.** If you are already signed in to Claude Code on this computer, there is nothing to do. If not, Hearth shows **Sign in with Claude** and opens your browser.
2. **A short setup.** Hearth checks your setup in the background, then asks (one screen each, and it skips anything already set):
   - which folders Claude may use,
   - how much Claude may do without asking (see [the five levels](#how-much-claude-does-on-its-own)),
   - which look you like. Plain is picked until you choose another.
3. **A short tour.** Each screen has a **Try it** button that opens the real thing. Press Esc to pause. Bring it back with **Help, Take the Tour**.
4. **Start a chat.** Click **New chat** (Cmd+N on a Mac, Ctrl+N on Windows). It starts right away in **No specific files**: Claude uses a private Hearth folder and you can just ask.
5. **To work with your own files,** use **New chat with options** (Cmd+Shift+N or Ctrl+Shift+N) and pick a folder, such as Documents. Do not pick your whole home folder. Claude works inside the folder you pick and asks before going outside it.
6. Type your message and press **Enter** to send. **Shift+Enter** starts a new line.

Tip: start with **Ask me first**. Claude then asks before it changes anything.

## The main window

### The chat list (left side)

- Chats are sorted into **groups**. Drag a chat onto a group, or use its **...** button or right-click menu.
- **Pin** the chats you use most.
- **Archive** chats you are done with. Settings, Privacy and lock can archive old ones for you.
- Double-click a chat (or press F2) to rename it. New chats can name and file themselves (Settings, Chats).
- The **Organize** button above the list makes groups, renames or moves the open chat, and can suggest groups by topic. It shows them first and has Undo.
- The **View** button changes how the list is sorted and grouped. It never moves anything.
- A small dot shows what each chat is doing: working, waiting for you, open, stopped, or stopped after an error.
- **Linked chats** show under the chat that started them, in the same group, with a thin thread line. Pinning or moving one moves the whole family.
- Drag the inner edge of the sidebar to make it wider or narrower. Double-click the edge to reset it.
- Search the list, or press **Cmd+K** (Ctrl+K) to find chats, settings and actions in one box. It also finds words said inside chats.

### The chat

Your messages and Claude's replies. Under each message are small icons. Point at one to see its name.

| Icon | What it does |
|---|---|
| Copy | Copies the message. |
| Read aloud | Your computer's voice reads a reply. Code is skipped. |
| Rewind to here | Takes the chat back to this point. You choose whether files Claude changed after it are undone too. The newest reply at the bottom has **Rewind this reply**, which goes back to before your last message. |
| Edit and resend | On your last message: opens a copy of the chat with your words ready to change. The original stays. |
| More | **Fork from here** starts a new chat with everything up to this point. **Split off** starts a linked chat. |

Very long chats show the newest messages first and load older ones as you scroll up. Search still jumps to any message.

### The message box

- **Attach files**: drop them on the box, paste them, or use the paperclip. Images, PDFs up to 20 pages and short text files go straight into the message. Other files are copied into Hearth's own folder so Claude can read the copy. Your original stays as it is unless you ask Claude to change it.
- **Voice**: click the microphone (Cmd+Shift+Space or Ctrl+Shift+Space). Your words appear in the box and nothing is sent until you press Enter. The first time, your computer asks to allow the microphone.
- **Capture**: the dashed square takes a picture of part of your screen into the message.
- **Talk**: hands-free. Say something, hear the answer, keep going.
- **Spelling**: right-click an underlined word to pick the right spelling, or **Add to dictionary**. The same menu has Cut, Copy and Paste.
- Type `/` to see commands. **Cmd+/** (Ctrl+/) opens a searchable list of shortcuts and commands.

### The header (top of a chat)

- The chat's name. Click it to rename, move to a group or pin.
- The Claude version and **Thinking** button.
- **How much Claude does on its own** (shows "Ask me first" or your current level).
- **Files Claude changed**, **Sources** (Research chats), **Background work**, **Apps and add-ons**, **Preview**, and the linked chats button.
- A phone button that turns on **Continue on your phone**.
- A download button that saves the chat as Markdown, HTML or PDF. Hearth offers to hide passwords and keys in the file.

When the window is narrow, the least useful buttons move into the **...** menu. Nothing overlaps.

### Side panels

Apps and add-ons, Files Claude changed, Background work, Preview, Notes, Helpers and Shortcuts and commands open beside the chat. Drag a panel's edge to make it wider or narrower. Esc closes the open panel.

### The bottom bar

Shows how full the chat is ("Chat 42% full") and, on a plan, how much of your 5-hour and weekly limits you have used. Click the chat size to summarize older messages now.

## How much Claude does on its own

This is the button at the top of every chat. It has five levels:

| Level (exact label) | What it means |
|---|---|
| **Ask me first** | Claude asks before it changes a file or does anything else. |
| **Edit files, ask before anything else** | Claude edits files in your folders without asking, and asks before anything else. |
| **Plan first, then ask** | Claude reads and makes a plan. Nothing changes until you approve it. |
| **Do it all, ask only for risky things** | Claude goes ahead with everyday steps. A safety check asks you about anything risky. |
| **Never ask (risky)** | Claude never asks and can do anything on this computer. Only for experts. It always asks you to confirm first. |

**What is an approval card?** When Claude wants to do something that needs your OK, a card appears in the chat. It says in plain words what Claude wants to do. You can **allow it once**, **always allow it** in this folder, or **deny it** (which just tells Claude no). "Always allow" covers one exact file or one exact command, never a whole folder. On **Do it all**, the card also says why Claude is asking.

## Features

### Models and effort
The **Claude version** menu has **Default** on top (picked for you), then the latest versions, and **More models** for older ones. **Thinking** sets how long Claude thinks: Quick, Balanced, Thorough, Extra thorough or Maximum. More thinking takes longer and uses more of your plan. **Big project mode** is for one large job: Claude plans, then splits the work among helpers. It uses much more of your plan.

### Apps and add-ons
The plug button opens **Apps and add-ons**. Apps are services such as mail, calendar and file storage that you connect on claude.ai. Use **Add an app on claude.ai**, connect it there, and it shows up in new chats. Hearth reconnects tools that drop, for example after your computer wakes. **Refresh connectors** restarts your open chats where they left off, so they pick up apps you added or signed in to again. A dot on the button means a tool failed or needs sign-in. **Browse add-ons** lists add-ons (plugins) you can install. Only install add-ons you trust.

### Background work and helpers
Commands and helpers that Claude runs in the background show in the **Background work** panel (the hourglass button), each with its own Stop. **Move to background** lets a chat carry on while Claude waits on a long task. Switch a chat from **Solo** to **Team** and Claude hands routine work to helpers on cheaper models, then checks their work. **Swarm** runs many helpers at once and asks before starting more than five. The **Helpers** panel shows who is doing what.

### Linked chats
A chat can start other chats that work on their own. Claude does this when work splits into parts, and Hearth asks you first. Or you can do it with **Split off** in a reply's menu. A linked chat never gets more access than the chat that started it. Its replies show in the first chat as a "Report from" card. Stopping a chat stops the chats it started.

### Quick Ask and quick actions
- **Quick Ask**: press **Option+Space** on a Mac or **Ctrl+Alt+Space** on Windows, in any app. A small window opens. Type a question, pick a folder, press Enter. **Open in Hearth** continues it in the main window. You can resize the window.
- **Quick actions**: pick keys in Settings, Notifications and shortcuts (they are off until you do). Select text in any app and press them to Summarize, Explain, Rewrite, Fix spelling and grammar, Translate, Reply or Ask about it. Nothing is sent until you choose.

### Continue on your phone
The phone button in a chat's header turns on **Continue on your phone** for that chat. You keep going from claude.ai/code or the Claude app while Claude runs on your computer. It is off until you turn it on, one chat at a time. It needs a Claude account sign-in with a subscription. Locking Hearth turns it off everywhere.

### Preview and pages
- **Preview**: the globe button shows an app that is running on your computer beside the chat. Pick one Hearth found, or type an address like `localhost:3000`.
- **Pages**: when a chart or report works better as a web page, Claude builds one and the chat shows an **Open page** button. Pages keep every version and cannot reach your files or chats.

### Research chats
In **New chat with options**, set Kind of chat to **Research**. Claude searches the web and cites its pages, and the **Sources** button lists every page it used. A Research chat cannot change your files.

### Notes
Connect a notes folder and the **Notes** panel (Cmd+Shift+B or Ctrl+Shift+B) opens beside the chat.

### Text size
Settings, **Appearance**, **Text size** makes everything in Hearth bigger or smaller together: Smaller, Default, Larger, Very large and Extra large. **Automatic** (the usual choice) picks for your screen: Default on laptops, a little larger on desk screens such as 27 inch 1440p and ultrawide monitors, and larger again on 4K screens shown at full resolution. **Cmd+Plus** and **Cmd+Minus** (Ctrl on Windows) change it too, and **Cmd+0** goes back to Automatic.

### Looks and mods
- **Looks** (skins): Hearth comes with a plain look and four starter looks. Open the palette button at the bottom of the sidebar to change colors, fonts and spacing live, or describe what you want and Claude designs it. Nothing is saved until you click Save. If a look breaks something, use **Help, Relaunch with the plain look**.
- **Mods** add small features: a panel, your own `/` commands, or automations. Settings, Mods, **New mod with Claude**. Mods only see what you allow, and Hearth asks again when a mod changes.

### Lock and privacy
Settings, **Privacy and lock** can lock Hearth with Touch ID (Mac) or Windows Hello. While locked, your chats are hidden and Claude cannot use your computer. It can also warn you before you send something that looks like a password, and scan chats for keys and passwords and blank them out (after a private backup). Turning a protection down asks you first.

### Backup and rewind
- **Files Claude changed** (Cmd+Shift+D or Ctrl+Shift+D) lists every file Claude changed in a chat, with Show in Finder or File Explorer and **Undo**. Before Undo changes a file, Hearth keeps a copy of the current version for 30 days.
- **Rewind to here** goes back in a chat: **Conversation and files**, **Conversation only** or **Files only**. A sheet shows what would change first.
- Settings, **Backup and troubleshooting**, **Back up Hearth** makes one `.hearthbackup` file with your settings, groups, looks, mods and pages. Use **Restore from backup** on a new computer. Chats and passwords are not in it.

### Schedules
Settings, **Schedules** sends a message for you at a set time, in a new or existing chat. **Start from a template** (for example Morning briefing or Weekly summary) fills the form. Nothing runs until you save. Schedules run while Hearth is open, and never skip permissions: if Claude needs your OK, the chat waits and Hearth notifies you.

### Usage
The bottom bar shows how much of your plan you have used. Settings, **Usage and cost** shows what each folder has cost and has a **Usage saver** with three levels: Balanced, Strict and Off. Settings, Chats, **Summarize when a chat reaches** sets when long chats sum themselves up.

### Codex helper
Settings, **Codex helper** lets Claude hand work to OpenAI's Codex, under your own Codex sign-in. It is off until you turn it on, and Hearth asks you to confirm, because the task and the files Codex reads go to OpenAI. Modes: **Off**, **Only when I ask**, **Claude decides**, and **Save Claude usage**.

Save Claude usage watches the higher of your Claude 5-hour and weekly usage. At the level you set (80% by default), Claude starts handing self-contained work, such as code, scripts, tests and reviews, to Codex, and checks what Codex changed. At 95% (or 10 points above your level, if that is higher) Claude only plans, writes briefs, checks and talks to you, and Codex does the work. Hearth shows a short notice when this starts and when it ends. If Codex is close to its own limit, Claude does the work itself. Whether a Codex run asks you first still follows the chat's permission level.

### Ask Claude about Hearth
Claude knows it runs in Hearth. Ask "What can Hearth do for me?" or "Where do I change how much you do on your own?" and Claude tells you which button to press and where it is, with its shortcut. Claude cannot press Hearth's buttons or change Hearth's settings for you, so it points the way. To switch this off, open Settings, Chats, **Tell Claude about Hearth**. Off means Claude acts as plain Claude Code. The change applies to chats you start or restart after it.

## Updates

Hearth updates itself. It checks shortly after it opens and then once a day. When a new version is out you get a notice. Click it, or choose **Check for Updates** in Hearth's menu, to open **Settings, Account and updates**. Nothing installs until you click **Update** there.

- Turn on **Update Hearth automatically** to download updates in the background. Hearth still asks before it restarts, and can wait until your chats finish.
- Before installing, Hearth checks that the download is signed like your copy. If not, nothing changes.
- Your chats and settings carry over. After an update, a short "What's new" note says what changed.
- If an update does not go in, the Updates page opens at the next start and says why.
- **Windows:** if you have version 0.4.2 or older, Hearth cannot install updates by itself. Download the latest setup file from the releases page and run it once. Your chats and settings stay.
- **Mac:** keep Hearth in the Applications folder so it can update itself.

## Your data

- **Chats** are Claude Code's own files, in the `.claude` folder in your user folder. Hearth reads them and keeps no second copy. It changes a chat file only when you ask (blanking out secrets, or moving old chats to the Trash).
- **Hearth's own settings** (chat names, groups, pins, options) are in `~/Library/Application Support/Hearth` on a Mac and `%APPDATA%\Hearth` on Windows.
- **Your looks, mods, pages, attachments and backups** are in the `.hearth` folder in your user folder.
- Nothing lives inside the app, so an update never touches your data. Before a new version changes Hearth's settings files, it saves a safety copy.
- Everything stays on your computer, except what Claude Code already sends to Anthropic to answer you.
- Your API key, if you add one for the optional pay-as-you-go extras, is stored encrypted and never shown again.

## Troubleshooting

| Problem | Fix |
|---|---|
| **Windows protected your PC** appears | Click **More info**, then **Run anyway**. Or use the one-line PowerShell install, which skips it. |
| macOS says it cannot verify the developer | Click **Done**, then System Settings, Privacy & Security, **Open Anyway**. Do this once. |
| Hearth says Git for Windows is missing | Install it from git-scm.com/downloads/win with the suggested settings, then click **Check again**. |
| A connector shows a dot or says it needs sign-in | Sign in to it again on claude.ai, then press **Refresh connectors** in the Apps and add-ons panel. |
| An update did not install | Open Settings, Account and updates to read why. On Windows 0.4.2 or older, run the newest setup file once. On a Mac, check that Hearth is in Applications. |
| Chat still asks on **Do it all** | That level still asks about risky things, such as files outside the chat's folder. The approval card says why. Allow it once, or choose always allow for that exact step. |
| Claude is not signed in | Click **Sign in with Claude** again. **Open the browser again** replaces a stuck sign-in. |
| Hearth acts oddly | Choose **Restart Hearth** in Hearth's menu. If the look looks broken, choose **Help, Relaunch with the plain look**. |
| You need to describe a problem | Choose **Help, Save Diagnostics**. It makes a small zip of version numbers and settings with secrets, emails and your user folder name removed. It has no chats. Look it over before you share it. |

## Uninstall

- **Windows:** quit Hearth from the flame in the system tray (bottom right of the taskbar), then open Windows Settings, Apps, Installed apps, find Hearth and choose **Uninstall**.
- **Mac:** quit Hearth and move it from Applications to the Trash.

Your chats stay, because they belong to Claude Code. To remove Hearth's own settings too, delete the `.hearth` folder in your user folder, and the settings folder named under [Your data](#your-data).

<!-- checked for: 0.4.7 -->
