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
- **Automate a task you repeat**: a scheduled task sends Claude a message as often as you say, like a weekly summary every Friday or a report every quarter.
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
   If the Claude app has scheduled tasks, the welcome screen also offers **Bring over N scheduled tasks too**. It opens a checklist, and nothing is brought over unless you tick it. You can skip it and do it later in the sidebar, under Scheduled, or in Settings, Schedules.
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
- **Rename chats** (Organize button, a group's right-click menu, or the command palette) gives many chats names that fit the whole chat. Pick which chats, check Claude's suggestions, edit any of them, then apply. It uses a small amount of your plan (one short request per few chats), skips names you typed yourself unless you include them, and has Undo.
- The **View** button changes how the list is sorted and grouped. It never moves anything.
- A small dot shows what each chat is doing: working, waiting for you, working in the background, has a new reply, open, stopped, or stopped after an error. A folded group still shows chats that are working, waiting for you, running in the background, or have a reply you have not read yet.
- **Linked chats** show under the chat that started them, in the same group, with a thin thread line. Pinning or moving one moves the whole family.
- Drag the inner edge of the sidebar to make it wider or narrower. Double-click the edge to reset it.
- Search the list, or press **Cmd+K** (Ctrl+K) to find chats, settings and actions in one box. It also finds words said inside chats.

### The chat

Your messages and Claude's replies. Under each message are small icons. Point at one to see its name.

To copy part of a reply, select it and press **Copy** next to **Reply** (links come along when you paste into an app that keeps them), or right-click and choose **Copy**. Right-click a link to **Copy link**. To answer one part of a reply, select the text in it and press **Reply** (or right-click and choose **Reply with quote**, or press Cmd+Shift+L, Ctrl+Shift+L on Windows). The quote shows as a card above your message box, with an X to remove it (or press Esc in an empty box), and you type your answer below it. Replying again replaces the quote. In the chat, your message shows the quote as an indented card above your words. Click it to see all of it and jump to the reply it came from. **Reply to this** in a reply's **More** menu quotes its first lines.

| Icon | What it does |
|---|---|
| Copy | Copies the message. |
| Read aloud | Your computer's voice reads a reply. Code is skipped. Settings, Voice sets the voice and the reading speed (slide it, or type an exact speed like 1.25). |
| Rewind to here | Takes the chat back to this point. You choose whether files Claude changed after it are undone too. The newest reply at the bottom has **Rewind this reply**, which goes back to before your last message. |
| Edit and resend | On your last message: opens a copy of the chat with your words ready to change. The original stays. |
| More | **Reply to this** quotes the start of the reply above your message box. **Fork from here** starts a new chat with everything up to this point. **Split off** starts a linked chat. |

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
- A small shield when **Full access, safely** is on. Hover it to see what it means for this chat.
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

### Full access, safely

Turn this on when you want Claude to get on with the work without putting your files at risk. It sits at the bottom of the level menu (the button at the top of a chat), in the **New chat** window, and in Settings, **Permissions**, where you can turn it on for every new chat. Turning it on also moves the chat to **Do it all**, so Claude doesn't stop for everyday steps.

- **On a Mac**: commands Claude runs go in Claude Code's safety box. They can only change files in the chat's folder and in folders you added to the chat (never your whole disk or home folder). They can read the rest of your Mac; Hearth blocks common secret files, like keys, saved logins, shell history and browser data. Your shell startup files, sign-in items and Git settings can't be changed. Git and most installs still work; an install that writes to a shared download folder may ask. Other websites follow your level: on **Do it all** the safety check looks at them first. The shield in the header says "Commands can only change files in this chat's folders".
- **If the safety box can't start**, the chat tells you, starts again without it, and asks you before every command. **Never ask** is off for that chat until the box works again (it runs on **Do it all**). It never runs commands unprotected without telling you.
- **On Windows** there is no safety box for commands. Simple reading commands (listing a folder, showing a file, searching one file) with their everyday options and Claude's own file edits go ahead; edits show in **Files Claude changed**, where **Undo** brings them back. Every other command shows an approval card first: installs, builds, tests, Git commands (a project's own Git settings can make them run programs) and commands joined with `|` too, and so does reading a file with keys or passwords. **Always allow** on the card lets that exact command through until Claude changes a file in this chat. Each command starts in the chat's own folder, and a reading command that climbs out with `..` asks. This is a safety net, not a wall: a program you allow can still change anything your account can. On **Never ask** there is no card.
- **Protected places**: Desktop, Documents, Downloads, Pictures, Movies (Videos on Windows), Music, iCloud Drive or OneDrive, and your home folder stay read-only for commands, even when a chat's folder holds them. Make one of them a chat's folder on purpose and commands can change it in that chat. Settings, **Permissions** lists them, with a switch for each.
- Undo and **Rewind to here** bring back files Claude edited, not files a command changed. Before you pick **Do it all**, **Never ask** or **Full access, safely**, Hearth checks for a backup (Time Machine on a Mac, File History or OneDrive on Windows). If there is none, it says so and offers to open the backup settings. You can always continue, and tick "Don't show this again".

## Features

### Models and effort
The **Claude version** menu has **Default** on top (picked for you), then the latest versions, and **More models** for older ones. **Thinking** sets how long Claude thinks: Quick, Balanced, Thorough, Extra thorough or Maximum. More thinking takes longer and uses more of your plan. **Big project mode** is for one large job: Claude plans, then splits the work among helpers. It uses much more of your plan. In **Settings > Chats**, **Let Claude choose for me** sets how new chats start: Claude picks the model and thinking level and works on its own, asking only about risky things. It is on by default for new installs; if you already used Hearth, it stays off until you turn it on there. Turn it off to choose the model, thinking level and how much Claude does on its own yourself. Your choices are saved in Claude Code's settings, so Claude Code in Terminal matches. A single chat can still change them from its header or from New chat with options.

### Apps and add-ons
The plug button opens **Apps and add-ons**. Apps are services such as mail, calendar and file storage that you connect on claude.ai. Use **Add an app on claude.ai**, connect it there, and it shows up in new chats. Hearth reconnects tools that drop, for example after your computer wakes. **Refresh connectors** restarts your open chats where they left off, so they pick up apps you added or signed in to again. When an app or tool needs you to sign in again, its row shows **Sign in**. Choose it, finish in your browser, then come back to Hearth. Your open chats pick it up on their own. You can also sign in again to any app or online tool whenever you like, even when nothing is wrong: open the **More** menu (three dots) on its row and choose **Sign in again**. Hearth also offers **Sign in** in a message when Claude tries to use an app and its sign-in has run out. **Compared with the Claude app** at the top of the panel checks that Hearth has the same apps as the Claude app. If it finds a difference (another account, an app that did not come through, or a sign-in that ran out) it says so in plain words and gives you the button to fix it. It also names your Claude account and the apps your chats get. If the Claude app has used other apps under another Claude organization, it lists them, because Claude keeps apps per organization and Hearth only gets the ones connected under its own. Each section in this panel folds when you click its title, and Hearth remembers which ones you folded (Add-ons and Skills start folded). Hearth also shows one message about the apps when you first open a chat after starting it. It also checks the Claude app's desktop extensions (tools such as Filesystem or Desktop Commander that run on your computer). Extensions only show in this panel, not in a message. The Claude app runs these itself, so Hearth's chats do not get them on their own. Each one that Hearth does not have gets an **Add to Hearth** button, once a chat is open so Hearth can see what it already has. Hearth shows you what will run before it adds anything, and adds it for you in every folder. If the open chat uses another profile, the extension is checked and added for that profile, so it reaches that chat. Sign-in values saved in the Claude app's encrypted settings are never copied. Values written in the Claude app's config file are copied as written, and the dialog hides the ones with sign-in names such as a token or key. Some extensions can not be added in one click: one that needs a setting or sign-in value Hearth can not copy safely (open **More ways to add apps**, then **Add one by hand**), or one that needs a program this computer does not have yet, such as Node.js (install it, then check again). Hearth lists these by name. Hearth only reads the Claude app's files and never changes them. A dot on the button means a tool failed or needs sign-in. **Browse add-ons** lists add-ons (plugins) you can install. Only install add-ons you trust.

### Apps and tools
**Settings, Apps and tools** lists every app and tool your chats can use: apps from claude.ai, tools set up on this computer, and tools that come with add-ons. Each has a switch. Turn one off and it is not loaded in any chat, here or in Claude Code in Terminal, until you turn it back on. This helps when an account has dozens of claude.ai apps and you only need a few. If you have more than one Claude account (profile), pick the account at the top, because each one has its own list. Apps from claude.ai and online tools also have **Sign in again** (while they are turned on), which opens the sign-in page in your browser even when no chat is open. For an online tool that is not from claude.ai, Hearth keeps a short background sign-in open for up to 5 minutes so the browser page can finish, then closes it. Tools that run on this computer have no sign-in. Tools set up on this computer also have **Remove**, which asks first. Apps from claude.ai are added or removed on claude.ai, so that row has **Manage on claude.ai**. Open chats keep their tools until you choose **Refresh open chats**. A tool your organization blocks shows **Blocked by your organization** and has no switch. The Apps and add-ons panel has a **Turn apps on or off everywhere** button that opens this page. Hearth lists the claude.ai apps it has seen in a chat, so open a chat once on each account.

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
A scheduled task sends Claude a message for you, as often as you say, in a new chat each time or in an existing chat. Scheduled tasks live in the sidebar, in the **Scheduled** section above your chats. Each task shows when it runs next (or **Off**), and its runs are listed under it like chats, newest first (the arrow shows them, **Show all** shows more). A run that went wrong has a red dot. Run chats are not in your other chat lists, but search and Cmd+K or Ctrl+K still find them.

- **+** next to Scheduled makes a new task. **Start from a template** (for example Morning briefing or Weekly summary) fills the form. Nothing runs until you save.
- **How often** has two ways in, chosen with the switch above the field: **Describe it** or **Pick on a calendar**. Hearth remembers which one you used last. Both make the same schedule and show the same plain-words reading and next runs, and **Save** stays off until there is a next run. Switching fills the other one in when it can; if a schedule is easier to keep in words, Hearth says so and stays on Describe it.
- **Describe it**: say it in your own words, for example "every weekday at 9am", "every 2 hours", "every Monday and Friday at 5pm", "every other Tuesday at 8am", "monthly on the 15th", "quarterly on the 1st at 9am", "first Monday of each month at 10am", "last Friday of the month at 5pm", "every 3 months starting March 15" or "twice a day at 9 and 5". Hearth reads it back in plain words with the next runs, for example "Quarterly on the 1st at 9:00 AM. Next: Fri Jan 1, 9:00 AM". When Hearth does not know the words, **Check with Claude** asks Claude to read them, and you choose **Use this** before it is saved. With no time, 9:00 AM is used. Words for one time work too, for example "tomorrow at 9", "next Monday at 10" or "on December 2 at 9am". A day a month does not have is skipped (a task on the 31st runs only in months with 31 days). Hearth runs a task at most every 15 minutes.
- **Pick on a calendar**: choose a start date and time, then **Repeats**: Does not repeat, Every day, Every weekday, Every week on the days you tick, Every 2 weeks on the days you tick, Every month on that day or on the 3rd Tuesday (or the last one), Every 3 months, Every year, or Custom, which switches to Describe it with the words filled in. Under the time, a row of day buttons (M T W T F S S) is the quickest way to choose: click the days you want. All seven reads as Every day, Monday to Friday as Every weekday, and any other days as Every week on those days. Clicking a day on a task that does not repeat makes it repeat every week on that day. The row is hidden for monthly and yearly choices. A repeating schedule never runs before the start date and time. On the 29th to 31st, months without that day are skipped.
- **One-time tasks** (Does not repeat, or words like "tomorrow at 9") run once. After the run, or after it is missed, the task switches itself off and stays in the list as "Ran once on ...". To use it again, choose **Pick a new time** on its page. A time that has already passed can not be saved.
- Click a task to open its page: what it does, how often, the folder, the level and Claude version, and every run with **Open chat**. **Run now**, **Turn off** (or **Turn on**), **Edit** and **Delete** (Hearth asks first; chats it started stay) are there too.
- Scheduled tasks run only while Hearth is open. If Hearth was closed or the computer was asleep, a run still starts when you are back within 2 hours. After that it is skipped and shows as missed. Closing the window quits Hearth unless you choose **Keep Hearth running** in Settings, Notifications and shortcuts, under **When you close the window** (see [Closing Hearth](#closing-hearth)). A task never runs twice at once.
- **How much Claude does on its own** works as in a chat: Ask me first, Edit files, ask before anything else, Plan first, then ask, or Do it all, ask only for risky things (not offered for a Research task). Every run uses the level you pick for the task, also in an existing chat whose own level is lower; that chat goes back to its own level when the run ends (also after Hearth quit during the run). An existing chat runs one task at a time: a second task that wants it at the same time does not start and shows why. Never ask is not offered.
- If a run needs your OK, its chat waits and Hearth notifies you. **Always allow for this task** on that question allows it and lets later runs of the task take that step without asking. Like always allow in a chat, it covers one exact file, one checked command or one website, never a whole folder, and never files that steer Claude (such as CLAUDE.md or the .claude folder). Hearth checks each saved step again before every run. The task's editor lists these steps under **Allowed without asking**, each with **Remove**. They are kept with the task only, never in your Claude Code settings or your project.
- Settings, **Schedules** has **Open Scheduled**, the templates, and Bring over. Cmd+K or Ctrl+K has **New scheduled task** and **Open Scheduled**.

**Bring over from the Claude app** (shown when Hearth finds scheduled tasks in the Claude desktop app, also in Cmd+K or Ctrl+K as **Bring over scheduled tasks from the Claude app**) opens a checklist in two parts, as the Claude app lists them: **From Claude app chats** and **From the Code tab**, each A to Z. Each task shows when it runs, in plain words, and whether it is on in the Claude app. Hearth copies how often it runs exactly, including every 15 minutes, quarterly and days of the month. Tasks that are on and that do not need Claude-app-only tools start ticked. Hearth only reads the Claude app's files. Every task you bring over starts turned off in Hearth: turn it on in Scheduled after you turn it off in the Claude app (Scheduled in the Claude app for chat tasks, Code tab, Scheduled for Code tab tasks), so it does not run twice. Where Hearth can not use a task's own folder (your whole home folder, the top of a drive, a network folder, or Hearth's own folder), it uses your New chat folder or Documents instead and names it on the last screen so you can check. A task whose instructions are longer than 8,000 characters shows **Convert for Hearth**: tick it and Hearth saves the full instructions in its own folder (never in your project) and sends them to Claude each time the task runs. The task's page then has **Open instructions** and **Show in folder**, and the editor has **Replace with text** if you want to shorten them. Instructions over 1 MB can not be converted. A task whose instructions Hearth can not read is listed with a note and can not be brought over. A task that runs once at a time still to come is brought over as a one-time task at that time. A task that already ran, or that runs on a pattern Hearth can not run (more often than every 15 minutes), starts at 9:00 AM every day until you change how often. Tasks that use tools only the Claude app has will not work in Hearth.

### Usage
The bottom bar shows how much of your plan you have used. Settings, **Usage and cost** shows what each folder has cost and has a **Usage saver** with three levels: Balanced, Strict and Off. Settings, Chats, **Summarize when a chat reaches** sets when long chats sum themselves up.

The **Usage** page (the bar chart button at the bottom of the sidebar, **Usage** in the gear menu, **Open Usage** in Cmd+K or Ctrl+K, or the link at the bottom of the chat size details) shows how much Claude Code was used on this computer: in Hearth, in the Claude app and in the terminal.

- Pick a time window: **Today**, **Last 5 hours**, **This week**, **This month**, **Last 30 days**, or **Pick dates** for any two days (both included). You see the estimated cost, tokens (sent, written, read from cache, saved to cache), turns, a bar chart by hour, day or month, and lists by model and by folder.
- Every amount is an estimate at Anthropic's list prices. On a plan it is what the work would cost at API prices, not what you pay. Hearth chats use Claude Code's own estimate; use outside Hearth is worked out from Claude Code's chat files and Hearth's price list, and the page says how much came from each. Tokens from a model Hearth has no price for are counted but not priced.
- **This month** shows used, the limit, what is left, when it starts again, and the pace ("At this pace: about $X by ..."). When your account reports a monthly limit for extra usage, that is shown, marked as from your account. Otherwise set your own **Monthly budget** (for example what your company allows) and the day it starts again. Hearth only shows it; nothing is stopped.
- On a plan, the 5-hour and weekly limits show as the last chat reported them.
- The first time, Hearth reads Claude Code's chat files in the background and shows **Still counting...** until it is done. After that it reads only what is new. Hearth never changes these files. It keeps the totals (numbers and folder names, no chat text) in its settings folder, so use stays counted after Claude Code deletes old chats.

### Codex helper
Settings, **Codex helper** lets Claude hand work to OpenAI's Codex, under your own Codex sign-in. It is off until you turn it on, and Hearth asks you to confirm, because the task and the files Codex reads go to OpenAI. Modes: **Off**, **Only when I ask**, **Claude decides**, and **Save Claude usage**.
It shows which account Codex is signed in to (the email and plan Codex reports, only in Hearth's window). **Switch account** signs Codex out and opens the sign-in page so you can pick another account; it won't run while a Codex run is going. **Use an API key instead** shows how.

Save Claude usage watches the higher of your Claude 5-hour and weekly usage. At the level you set (60% by default), Claude starts leaning on Codex: when in doubt, it hands work off. At 90% (or 10 points above your level, if that is higher) Claude only plans, writes briefs, checks and talks to you, and Codex does the work. Hearth shows a short notice when this starts and when it ends. If Codex is close to its own limit, Claude does the work itself. Whether a Codex run asks you first still follows the chat's permission level.

In **Claude decides** and **Save Claude usage**, Claude hands Codex self-contained work with several steps, such as writing or fixing code and running its tests, scripts, builds, refactors and bug hunts, and keeps the planning, the judgement calls and checking what Codex did. Each task goes with what Claude already knows, the project's CLAUDE.md (never CLAUDE.local.md, which stays private), and a short note about this computer (the system and which of node, npm, python and git it has). Each run that may edit gets its own temporary folder for test runners, package caches and builds, which Hearth removes when the run ends. If this computer's setup stops Codex (no internet, a missing program, the safety sandbox), Claude tells you in one line what blocked it and what would fix it, then does that part itself. Codex only uses the internet when **Let Codex use the internet** is on.

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

The **Claude engine** (Claude Code) has its own part of that page. It never updates itself while Hearth runs it, so Hearth looks for a new version shortly after it opens and then once a day, and tells you once per version. Hearth only asks downloads.claude.ai for a version number; nothing about you is sent.

- The page shows your version, the newest one, when Hearth last looked, and what went wrong if it could not look.
- Click **Update the Claude engine** to update. Chats that were open can restart on the new version; a chat that is working restarts after its reply.
- Turn on **Update the Claude engine automatically** to let Hearth update it by itself when no chat is working. It never stops a reply, and Settings shows how it went.
- **Check for new Claude engine versions** is on unless you turn it off. Off, Hearth only looks when you click **Check now**.

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
| A Mac asks for your password for "Hearth Safe Storage" after an update | Type your Mac password and click **Always Allow**. Hearth keeps the key that protects Undo in your Mac's keychain, and macOS asks again once after each update because Hearth is not signed with an Apple developer account. It does not ask again until the next update. |
| Hearth says Git for Windows is missing | Install it from git-scm.com/downloads/win with the suggested settings, then click **Check again**. |
| A connector shows a dot or says it needs sign-in | Open the Apps and add-ons panel and choose **Sign in** on its row. Finish in your browser, then come back to Hearth. If the page opens in the wrong browser or profile, use **Copy sign-in link** and paste it where you are signed in to Claude. |
| An app works in the Claude app but not in Hearth | Open the Apps and add-ons panel and read **Compared with the Claude app**. It says what differs, for example another account or a desktop extension Hearth does not have, and gives you the button to fix it. |
| An update did not install | Open Settings, Account and updates to read why. On Windows 0.4.2 or older, run the newest setup file once. On a Mac, check that Hearth is in Applications. |
| Chat still asks on **Do it all** | That level still asks about risky things, such as files outside the chat's folder. The approval card says why. Allow it once, or choose always allow for that exact step. |
| Claude is not signed in | Click **Sign in with Claude** again. **Open the browser again** replaces a stuck sign-in. |
| Hearth acts oddly | Choose **Restart Hearth** in Hearth's menu. If the look looks broken, choose **Help, Relaunch with the plain look**. |
| Hearth asks before quitting, or you want it to ask again | Settings, **Notifications and shortcuts**, **Ask before quitting while Claude is working**. Off means quits go straight through. |
| You need to describe a problem | Choose **Help, Save Diagnostics**. It makes a small zip of version numbers and settings with secrets, emails and your user folder name removed. It has no chats. Look it over before you share it. |

## Closing Hearth

Closing the window (the red button on a Mac, the X on Windows, or Cmd+W or Ctrl+W) quits Hearth completely, with nothing left in the Dock, the tray or the background.

Every way of quitting asks first when Claude is still working: the close button, Cmd+Q or Ctrl+Q, **Quit Hearth** in the menu, **Quit** in the tray icon's menu, and **Quit** in the Dock on a Mac. It says what is still going on, for example "Claude is still working in 2 chats.", and gives you **Quit now**, **Keep running in the background** (just this once; on a Mac, and on Windows when the tray icon is on) or **Cancel**. Cancel is the default. Tick **Don't ask again** and choose Quit now or Keep running to stop the question. Ticking it and then choosing Cancel changes nothing. To bring the question back, open **Settings, Notifications and shortcuts** and turn on **Ask before quitting while Claude is working**. Hearth never asks when it quits to install an update, when you choose Restart Hearth, or when your computer is shutting down or logging you out. While Hearth is locked, the question only shows counts, never anything from your chats.

If you use schedules or leave work running, go to **Settings, Notifications and shortcuts** and under **When you close the window** choose **Keep Hearth running**. Closing the window then leaves Hearth running (on a Mac in the Dock and menu bar, on Windows in the tray), so schedules and background work carry on. To quit for real, use **Quit Hearth** in the menu (Cmd+Q on a Mac, Ctrl+Q on Windows) or right-click the tray icon and choose **Quit**. If you have schedules, Hearth tells you once after updating that closing now quits, and offers to switch.

## Uninstall

- **Windows:** quit Hearth (with the default, closing the window is enough; if you chose Keep Hearth running, use the flame in the system tray at the bottom right of the taskbar), then open Windows Settings, Apps, Installed apps, find Hearth and choose **Uninstall**.
- **Mac:** quit Hearth and move it from Applications to the Trash.

Your chats stay, because they belong to Claude Code. To remove Hearth's own settings too, delete the `.hearth` folder in your user folder, and the settings folder named under [Your data](#your-data).

<!-- checked for: 0.6.6 -->
