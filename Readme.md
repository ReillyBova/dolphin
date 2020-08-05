# Custom Dolphin Emulator Build for Paper Mario on macOS

Dolphin is an emulator for running GameCube, Triforce and Wii games on
Windows/Linux/OS X systems and recent Android devices. It's licensed under
the terms of the GNU General Public License, version 2 (GPLv2).

Please read the [FAQ](https://dolphin-emu.org/docs/faq/) before using Dolphin.

## The Bounding Box Issue — A Brief History
Since around Dolphin build 4.0-5125, games that require emulation of the "Bounding Box" effect no longer run well on macOS systems. This is because Dolphin 4.0-5125 began using OpenGL 4.2+ features to emulate the effect, while macOS has been stuck on OpenGL 4.1 for over a decade (in fact, Apple has now officially deprecated OpenGL, and introduced Metal as its permanent replacement). As of Dolphin 5.0-12247, running a game that requires the "Bounding Box" effect on macOS and using OpenGL as the graphical backend will crash the game when the effect is used. If the Metal-integrated Vulkan graphical backend is used instead of OpenGL, the game will (probably) not crash, however the FPS and emulation performance will plummet below acceptable rates. This is not the case for Dolphin 4.0-5124, which is able to emulate the "Bounding Box" effect on macOS using OpenGL with acceptable — though not always stellar — performance.

## Why This Matters
One of the games hit especially hard by this issue is the beloved gem, *Paper Mario: The Thousand Year Door*, which uses the Bounding Box effect all over to simulate paper effects. Unfortunately, this game is among those that most deserving of emulation, as it looks stunning when scaled to HD resolution, rendered in widescreen, and run with HD textures.

While it is possible to run *Paper Mario: The Thousand Year Door* (TTYD) on macOS using Dolphin development build 4.0-5124 and achieve 2K resolution and widescreen at typically-full performance (benchmarked using a 2016 15" MacBook Pro running macOS Catalina 10.15.5), **it is NOT possible to use HD Textures** as the community-developed HD Texture pack for TTYD uses a texture naming-scheme that was [introduced in Dolphin 4.0-5234](https://github.com/dolphin-emu/dolphin/pull/1885) — just over 100 minor dev-releases after the last Dolphin build that macOS can still run TTYD on.

## What I've Done
This repository began as a fork of [Dolphin 4.0-5124](https://github.com/dolphin-emu/dolphin/pull/1899). From there, I merged the changes from [introduced in Dolphin 4.0-5234](https://github.com/dolphin-emu/dolphin/pull/1885) that introduce the new naming scheme for custom textures. Therefore, using this custom build of Dolphin, it is possible to experience "Bounding Box" dependent games like *Paper Mario: The Thousand Year Door* scaled to HD resolution, rendered in widescreen, AND run with HD textures.... all on macOS!

## System Requirements
* OS
    * Apple macOS (10.9 or higher; 11.0+ may break game)
* Hardware
    * 2015+ 15"+ MacBook Pro with dedicated GPU recommended (not required)

## Installation on macOS

Download the compiled [Dolphin App](https://github.com/ReillyBova/dolphin/blob/master/App/Dolphin.app.zip), and drag it into your applications folder. If you would like to compile the app from scratch yourself, please see the bottom of this readme for guidance.

## Setup for TTYD

This is optional, but if you are interested in running your *Paper Mario: The Thousand Year Door* ISO in HD, using a 16:9 aspect ratio, and with HD textures, here is a quick rundown to help you get set up:

### Running the Game in HD

This is the easiest part! Click on the `Graphics` button along the upper Toolbar, switch to the `Enhancements` tab, and set `Internal Resolution` to the value of your choosing! (4x Native recommended)

### Forcing Widescreen

Unfortunately, the built-in Dolphin "widescreen" hack doesn't work well for TTYD so we will have to use a Gecko cheat code instead (which works great)!

First open up the `Graphics Configuration` pane again, and set the `Aspect Ratio` option under the `General` tab to `Force 16:9`. This will ensure the rendered output is stretched out into the correct widescreen aspect ratio.

Next, before we add a Gecko cheat code, we need enable cheats! This can be done by clicking on the `Config` button right next to the `Graphics` button, and checking `Enable Cheats`. Easy, but **please don't forget this step!**

If you were to run TTYD now, you will find that the game appears stretched-out in the horizontal direction since TTYD's camera is still capturing the game at a boxy 4:3 aspect ratio. To fix this, we need to add the widescreen cheat code itself, which will ensure in-game squares look perfectly square in widescreen. There are two ways to add Gecko codes in Dolphin 4.0: Option I is the app's intended User-Interface way, but it's given me some real trouble on macOS Catalina; therefore, there is also Option II, where we insert our gecko codes directly into the Dolphin App's "save/config files" (i.e. Application Support folder) via Finder. To save you time, I recommend Option II, since it is guaranteed to work.

#### Option I

First, right click on your TTYD ISO that you have loaded into Dolphin and hit `properties`. Switch to the `Gecko Codes` tab, and click the `Edit Config` button that is hiding in the bottom left-hand corner of the pane. This should pop up an empty text file. Copy the `G8ME01.ini` contents provided under Option II into the file, save the text file, and then close the text file.

If all went well, you should now see a checked-checkbox labeled "widescreen". If not, proceed to Option II.

#### Option II

First, you will need to **completely quit Dolphin!**. From there, open up a new Finder window, and press `Command + Shift + G`, which should pull down a "Go to the folder" pane. Paste `~/Library/Application Support/Dolphin/` into the text field, and hit `Enter`. This will take you to the Application Support folder for Dolphin, which resides inside the hidden `~/Library/` folder.

Navigate into the `GameSettings` folder, and create a new text file named `G8ME01.ini` — this name defines it as the game settings file for "G8ME01", which is the official code for the US release of *Paper Mario: The Thousand Year Door*. Paste the following contents into `G8ME01.ini`:

```
[Gecko]
$widescreen
C202F310 00000003
3DC08042 3DE03FD8
91EEF6D8 4E800020
60000000 00000000
04199598 4E800020
[Gecko_Enabled]
$widescreen
```


## Installation on Linux/OS X
Dolphin requires [CMake](http://www.cmake.org/) for systems other than Windows. Many libraries are
bundled with Dolphin and used if they're not installed on your system. CMake
will inform you if a bundled library is used or if you need to install any
missing packages yourself.

### Build steps:
1. `mkdir Build`
2. `cd Build`
3. `cmake ..`
4. `make`

On OS X, an application bundle will be created in `./Binaries`.

On Linux, it's strongly recommended to perform a global installation via `sudo make install`.

## Uninstalling
When Dolphin has been installed with the NSIS installer, you can uninstall
Dolphin like any other Windows application.

Linux users can run `cat install_manifest | xargs -d '\n' rm` from the build directory
to uninstall Dolphin from their system.

OS X users can simply delete Dolphin.app to uninstall it.

Additionally, you'll want to remove the global user directory (see below to
see where it's stored) if you don't plan to reinstall Dolphin.

## Command line usage
`Usage: Dolphin [-h] [-d] [-l] [-e <str>] [-b] [-V <str>] [-A <str>]`  

* -h, --help Show this help message  
* -d, --debugger Opens the debugger  
* -l, --logger Opens the logger  
* -e, --exec=<str> Loads the specified file (DOL,ELF,WAD,GCM,ISO)  
* -b, --batch Exit Dolphin with emulator  
* -V, --video_backend=<str> Specify a video backend  
* -A, --audio_emulation=<str> Low level (LLE) or high level (HLE) audio  

Available DSP emulation engines are HLE (High Level Emulation) and
LLE (Low Level Emulation). HLE is fast but often less accurate while LLE is
slow but close to perfect. Note that LLE has two submodes (Interpreter and
Recompiler), which cannot be selected from the command line.

Available video backends are "D3D" (only available on Windows Vista or higher),
"OGL". There's also "Software Renderer", which uses the CPU for rendering and
is intended for debugging purposes, only.

## Sys Files
* `totaldb.dsy`: Database of symbols (for devs only)
* `GC/font_ansi.bin`: font dumps
* `GC/font_sjis.bin`: font dumps
* `GC/dsp_coef.bin`: DSP dumps
* `GC/dsp_rom.bin`: DSP dumps

The DSP dumps included with Dolphin have been written from scratch and do not
contain any copyrighted material. They should work for most purposes, however
some games implement copy protection by checksumming the dumps. You will need
to dump the DSP files from a console and replace the default dumps if you want
to fix those issues.

## Folder structure
These folders are installed read-only and should not be changed:

* `GameSettings`: per-game default settings database
* `GC`: DSP and font dumps
* `Maps`: symbol tables (dev only)
* `Shaders`: post-processing shaders
* `Themes`: icon themes for GUI
* `Resources`: icons that are theme-agnostic
* `Wii`: default Wii NAND contents

## User folder structure
A number of user writeable directories are created for caching purposes or for
allowing the user to edit their contents. On OS X and Linux these folders are
stored in `~/Library/Application Support/Dolphin/` and `~/.dolphin-emu`
respectively. On Windows the user directory is stored in the `My Documents`
folder by default, but there are various way to override this behavior:

* Creating a file called `portable.txt` next to the Dolphin executable will
  store the user directory in a local directory called "User" next to the
  Dolphin executable.
* If the registry string value `LocalUserConfig` exists in
  `HKEY_CURRENT_USER/Software/Dolphin Emulator` and has the value **1**,
  Dolphin will always start in portable mode.
* If the registry string value `UserConfigPath` exists in
  `HKEY_CURRENT_USER/Software/Dolphin Emulator`, the user folders will be
  stored in the directory given by that string. The other two methods will be
  prioritized over this setting.


List of user folders:

* `Cache`: used to cache the ISO list
* `Config`: configuration files
* `Dump`: anything dumped from Dolphin
* `GameConfig`: additional settings to be applied per-game
* `GC`: memory cards and system BIOS
* `Load`: custom textures
* `Logs`: logs, if enabled
* `ScreenShots`: screenshots taken via Dolphin
* `StateSaves`: save states
* `Wii`: Wii NAND contents

## Custom textures
Custom textures have to be placed in the user directory under
`Load/Textures/[GameID]/`. You can find the Game ID by right-clicking a game
in the ISO list and selecting "ISO Properties".
