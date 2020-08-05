# Custom Dolphin Emulator Build for Paper Mario on macOS

Dolphin is an emulator for running GameCube, Triforce and Wii games on
Windows/Linux/OS X systems and recent Android devices. It's licensed under
the terms of the GNU General Public License, version 2 (GPLv2).

Please read the [FAQ](https://dolphin-emu.org/docs/faq/) before using Dolphin.

## The Bounding Box Issue — A Brief History
Since around Dolphin version 4.0-5125, games that require emulation of the "Bounding Box" effect no longer run well on macOS systems. This is because Dolphin 4.0-5125 began using OpenGL 4.2+ features to emulate the effect, while macOS has been stuck on OpenGL 4.1 for over a decade (in fact, Apple has now officially deprecated OpenGL, and introduced Metal as its permanent replacement). As of Dolphin 5.0-12247, running a game that requires the "Bounding Box" effect on macOS and using OpenGL as the graphical backend will crash the game when the effect is used. If the Metal-integrated Vulkan graphical backend is used instead of OpenGL, the game will (probably) not crash, however the FPS and emulation performance will plummet below acceptable rates. This is not the case for Dolphin 4.0-5124, which is able to emulate the "Bounding Box" effect on macOS using OpenGL with acceptable — though not always stellar — performance.

## Why This Matters
One game hit especially hard by this issue is the beloved gem, *Paper Mario: The Thousand Year Door*, which uses the Bounding Box effect all over to simulate paper effects. Unfortunately, this game is among those that most deserving of emulation, as it looks stunning when scaled to HD resolution, rendered in widescreen, and run with HD textures.

While it is possible to run *Paper Mario: The Thousand Year Door* (TTYD) on macOS using Dolphin development build 4.0-5124 and achieve 2K resolution and widescreen at typically-full performance (benchmarked using a 2016 15" MacBook Pro running macOS 10.15.5 "Catalina"), **it is NOT possible to use HD Textures** as the community-developed HD Texture pack for TTYD uses a texture naming-scheme that was [introduced in Dolphin 4.0-5234](https://github.com/dolphin-emu/dolphin/pull/1885) — just over 100 minor dev-releases after the last Dolphin build that macOS can still run TTYD on.

## What I've Done
This repository began as a fork of [Dolphin 4.0-5124](https://github.com/dolphin-emu/dolphin/pull/1899). From there, I merged the changes from [Dolphin 4.0-5234](https://github.com/dolphin-emu/dolphin/pull/1885) that introduce the new naming scheme for custom textures. Therefore, using this custom build of Dolphin, it is possible to experience "Bounding Box" dependent games like *Paper Mario: The Thousand Year Door* scaled to HD resolution, rendered in widescreen, AND run with HD textures.... all on macOS!

## System Requirements
* OS
    * Apple macOS (10.9 or higher; 11.0+ may break everything...)
* Hardware
    * 2015+ 15"+ MacBook Pro with dedicated GPU recommended (not required)

## Installation on macOS

Download the compiled [Dolphin App](https://github.com/ReillyBova/dolphin/blob/master/App/Dolphin.app.zip), and unzip the contents of the download into your applications folder. If you would like to compile the app from scratch yourself, please see [the bottom of this readme](https://github.com/ReillyBova/dolphin/blob/master/Readme.md#building-the-app-from-scratch-on-macos-1015-catalina) for guidance.

## Setup for TTYD

This is optional, but if you are interested in running your *Paper Mario: The Thousand Year Door* ISO in HD, using a 16:9 aspect ratio, and with HD textures, here is a quick rundown to help you get set up:

### Running the Game in HD

This is the easiest part! Click on the `Graphics` button along the upper Toolbar, switch to the `Enhancements` tab, and set `Internal Resolution` to the value of your choosing! (4x Native recommended)

### Forcing Widescreen

Unfortunately, the built-in Dolphin "widescreen" hack doesn't work well for TTYD so we will have to use a Gecko cheat code instead (which works great)!

First open up the `Graphics Configuration` pane again, and set the `Aspect Ratio` option under the `General` tab to `Force 16:9`. This will ensure the rendered output is stretched out into the correct widescreen aspect ratio. While you're at it, you may also want to enable the `V-Sync` feature to prevent graphical tearing (this is really noticable with the fast-sweeping TTYD theater curtains).

Next, before we add a Gecko cheat code, we need enable cheats! This can be done by clicking on the `Config` button right next to the `Graphics` button, and checking `Enable Cheats`. Easy, but **please don't forget this step!**

If you were to run TTYD now, you will find that the game appears stretched-out in the horizontal direction since TTYD's camera is still capturing the game at a boxy 4:3 aspect ratio. To fix this, we need to add the widescreen cheat code itself, which will ensure that in-game squares look perfectly "square" once stretched out into widescreen.

There are two ways to add Gecko codes in Dolphin 4.0: Option I is the app's intended User-Interface way, but it's given me some real trouble on macOS Catalina; therefore, there is also Option II, where we insert our Gecko codes directly into the Dolphin App's "save/config files" (i.e. Application Support folder) via Finder. To save you time, I recommend Option II, since it is guaranteed to work.

#### Option I

First, right click on your TTYD ISO that you have loaded into Dolphin and hit `properties`. Switch to the `Gecko Codes` tab, and click the `Edit Config` button that is hiding in the bottom left-hand corner of the pane. This should pop up an empty text file. Copy the `G8ME01.ini` contents provided under Option II into the file, save the text file, and then close the text file.

If all went well, you should now see a checked-checkbox labeled "widescreen". If not, proceed to Option II.

#### Option II

First, you will need to **completely quit Dolphin!**. From there, open up a new Finder window and press `Command + Shift + G`, which should pull down a "Go to the folder" pane. Paste `~/Library/Application Support/Dolphin/` into the text field, and hit `Enter`. This will take you to the Application Support folder for Dolphin, which resides inside the hidden `~/Library/` user folder.

Navigate into the `GameSettings` folder, and create a new text file named `G8ME01.ini` — this name defines it as the settings file for game "G8ME01", which is the official code for the US release of *Paper Mario: The Thousand Year Door*. Paste the following contents into `G8ME01.ini`:

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

The first section of these settings defines the Gecko codes for widescreen as `widescreen`. The second block then enables the `widescreen` cheat, so that you are all set up to play!

After you save and close `G8ME01.ini`, you may want to set the file to read-only mode, so that the Dolphin app doesn't overwrite or otherwise clobber your widescreen hack. This can be done by right-clicking on `G8ME01.ini`, selecting `Get Info`, scrolling to the bottom of the info pane, and changing your user's privilege from `Read & Write` to `Read Only`.

At this point, I recommend that you reopen Dolphin and launch TTYD to ensure you have everything working up to this point! As [noted in the known-issues below](https://github.com/ReillyBova/dolphin/blob/master/Readme.md#game-is-not-visible-on-emulation-launch), if your game does not appear to pop-up after hitting play, try hitting the `Stop` button in the toolbar to make the emulation window visible.

### Adding HD Textures

First, start downloading the **PNG version** of the [TTYD HD texture pack](https://forums.dolphin-emu.org/Thread-paper-mario-ttyd-hd-texture-pack-v1-9-april-1st-2020). If this link doesn't work, just look up "Paper Mario TTYD HD Texture Pack", and it should be the first result.

While this is downloading, reopen the `Graphics Configuration` pane again, and navigate back to the `Enhancements` tab. Select a higher value for the `Anisotropic Filtering` option than the default. This will prevent HD textures from looking wonky at highly-oblique viewing angles. Next, switch over to the `Advanced` tab, and enable the `Load Custom Textures` feature to enable loading of the HD texture pack.

Once the texture pack has finished downloading, unzip the download. You should see that one of the enclosed folders is titled `G8M`. You will need to rename this folder to `G8ME01`, which ties the texture pack to the US release of TTYD (you need a perfect six-character ID match in this build; this was changed later on in Dolphin to allow three-character game codes like `G8M`).

Finally, open a new finder window, and navigate to Dolphin's Application Support folder as done before in [Option II](https://github.com/ReillyBova/dolphin#option-ii). Next navigate into the `Load` folder, and then into the `Textures` folder. It is to this location that you should drag the `G8ME01` folder from the HD texture pack download. After (optionally) restarting Dolphin, you should now be good to go!


## Known Issues

Emulation is a challenging art, and at the cost of high performance, issues are bound to crop up now and then. I have not yet completed TTYD on macOS to ensure the game is completely playable from start to finish using this build, but it has worked any major issues into the start of the first chapter! That said, here are some issues you may face:

### ISO Refresh Pane Freezes on App Launch

This can be fixed by clicking on the main Dolphin window and/or by hitting `Refresh`.

### Game Is Not Visible On Emulation Launch

This is a strange bug that exists in Dolphin 4.0-5124 but not Dolphin 4.0. Sometimes, the emulation window is completely invisible when it is first launched, but hitting `Stop` in the main window to trigger the "Stop Emulation" alert has always worked to fix this. Unfortunately, even once the emulation window is visible, I've had some trouble getting it to then expand into full screen without disappearing again. It's not impossible as I've gotten it to work after relaunching the emulation, restarting the App, and opening misc. Dolphin settings panes enough times in enough combinations, but alas — I don't remember exactly what procedure fixed the behavior (once the emulation window launches normally, it will expand into full screen normally). One suggestion is to configure Dolphin to launch the game in the main window, and then hide the toolbars after you go full screen.

### Weird Artifacts At Edge of Widescreen Window in TTYD
  
*Very rarely* (it seems), the horizontal extremes of the screen may look funky in *Paper Mario: The Thousand Year Door* when using the widescreen cheat code. This usually happens in cut scenes, when the wider camera reveals something that would otherwise be hidden in the original Gamecube aspect ratio of 4:3. One example of this is the green sky that appears at the edges of the screen when the boat crosses the ocean during the introductory sequence of TTYD. Since this happens at the game level, there is no way to fix it!

### Slowdown During Paper Peeling Effect in TTYD

While this version of Dolphin provides some of the best performance for the "Bounding Box" effect on macOS systems, it is still a computationally taxing effect to emulation. As such, I have found my framerate usually drops down to 20-30 FPS during these sequences. Thankfully, since the peeling animations are generally really quick, the game is able to remain above the lower bound of playable

### Occasional Blip in Performance When New Textures Appear 

The downside of the HD texture pack is that it can take more than a frame for each large HD texture to be fetched from the hard drive and loaded into RAM. As such, you may notice a very slight blip in performance whenever a new texture appears on screen, but the FPS drop is usually so slight you can generally ignore it, and will usually not even notice it. Later versions of Dolphin introduced a feature that would load all custom HD textures straight into RAM so they are ready-to-go in an instant, however, this feature has not been included in this build.

### Scenes Loading Visible to Camera in TTYD

This is the one item I *really* wish I could fix, as it would allow for a much more seamless emulation experience. The root cause of this bug has nothing to do with the custom textures or HD resolution, and everything to do with how Dolphin emulates TTYD. In order to boost performance, Dolphin enables "dual-core mode" by default. While this feature provides a massive speedup, it is resposibile for the visible-scene loading graphical hitch in the TTYD emulation, as TTYD (or all GameCube and Wii games, for that matter) were not designed to run on multicore or multithreaded systems!

It is possible to disable the dual-core mode by right-clicking on the TTYD ISO in Dolphin, selecting `properties`, and toggling off `Enable Dual Core`; however, unless you have a CPU with extremely powerful/high-clock-rate cores, the game may no longer emulate well enough to be playable. It certainly doesn't on my 2016 15" MacBook Pro running macOS Catalina with a 2.6 GHz Intel i7 CPU!

## Building the App from Scratch on macOS 10.15 "Catalina"

Dolphin 4.0-5124 requires a minimum version of macOS 10.9 "Mavericks", which means that app compiles itself using the macOS 10.9 SDK exclusively. Unfortunately, this SDK was discontinued and is no longer available by default on macOS, so you will need to install it yourself.

First [download the MacOSX10.9 SDK](https://github.com/phracker/MacOSX-SDKs/releases) and unzip the archive. You will need to copy the extracted folder, `MacOSX10.9.sdk`, into two locations:

1) `/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/`
2) `/Library/Developer/CommandLineTools/SDKs/`

Once you have the macOS 10.9 SDKs ready, you will need to install [CMake](http://www.cmake.org/), which will assemble the Makefiles for your build and ensure that all necessary dependencies are installed. If you have brew, you can install CMake using `brew install cmake`.

### Build steps:
1. Open a new Terminal window and set this repository as your working directory. Delete the `/Build/` folder I've included in the repo.
2. `mkdir Build`
3. `cd Build`
4. `cmake -DCMAKE_OSX_SYSROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk/ ..`
5. This is the annoying part... CMake still attaches most C++ system library headers to the macOS 10.15 SDK, so you will need find and replace all incorrect references. One way to do this is to open the repository in your favorite editor, search for all instances of `MacOSX10.15` in the `/Build/` directory, and replace them with `MacOSX10.9`. I also needed to search and replace `MacOSX10.11` with `MacOSX10.9`, but this was possibly because I wasn't using the 10.9 SDK from the start when figuring this out myself. In any case, if you have build errors due to a missing header file, you probably went wrong somewhere in this step. 
4. `make`

After about 20 – 30min of compiling, an application bundle will be created in `./Binaries`.
