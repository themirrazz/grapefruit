# Grapefruit
Grapefruit is a cross-platform launcher and runtime for Animal Jam Classic. It's super lightweight - in fact, all of the core logic is implemented in a single file, which is only ~~91~~ ~~89~~ 87 lines long (including blank lines and comments). Grapefruit was made with one goal in mind: Port AJ Classic to as many platforms as possible before they finish rewriting the entire thing in WebGL. 

## Installing Grapefruit
You can find the installation instructions for all platforms in the [`INSTALL.md`](INSTALL.md) file. If Grapefruit isn't available from your platform, you can follow these instructions to manually install it (not officially supported).

### 1. Download the Grapefruit package
You can download the Grapefruit package for Windows or Linux from these links: [Windows (x86)](https://github.com/themirrazz/grapefruit/releases/download/v1.0.1/Grapefruit-win-ia32.tar.gz) &bullet; [Windows (x64)](https://github.com/themirrazz/grapefruit/releases/download/v1.0.1/Grapefruit-win-x64.tar.gz) &bullet; [Linux (x64)](https://github.com/themirrazz/grapefruit/releases/download/v1.0.1/Grapefruit-linux-x64.tar.gz) &bullet; [Linux (ARMv7l)](https://github.com/themirrazz/grapefruit/releases/download/v1.0.1/Grapefruit-linux-armv7l.tar.gz)

Once you've downloaded it, extract the package into a new folder.

### 2. Download Pepper Flash
Download Pepper Flash. On Arch Linux (x64), you can get it by installing the `pepper-flash` package from the AUR. You can manually follow the PKGBUILD instructions on other non-Arch-based distros. On ARM, you can find ARMv7l copies of Pepper Flash 28 that have been extracted from chromeOS. On Windows or Mac, you can get a copy of `pepflashplayer.dll` from the AJ Classic game files. Copy Pepper Flash to `resources/app/libpepflashplayer.so` or `resources/app/pepflashplayer.dll` inside of the Grapefruit package.

### 3. Download the game files
You can download AJ Classic 1.5.7 [here](https://classic-download.animaljam.com/win/aj-classic-1.5.7-ia32.nsis.7z). Once you do, copy and rename `app.asar` to `resources/app/game.asar` inside of the Grapefruit package.

### 4. Create the version lock
Create the file `game-version.lock` inside of `resources/app`. Put this text in it:
```
1.5.7
```

### 5. Run the `AJ Classic` binary
Grapefruit should launch instantly.

## Building from source
To install the dependencies, run `npm install`. You can then use `make` to build versions for Linux or Windows. If you're on a Linux-based system, you can add `-tgz` to package a build in `.tar.gz` format. You can also use `npm test` to run Grapefruit. If you're on Arch Linux and have the `electron11-bin` package from the AUR and don't intend on building your own packages, you can run `electron11 . --no-sandbox` to run Grapefruit without needing to install its dependencies.

## Porting Grapefruit
Grapefruit is designed to be cross-platform. All it requires is an Electron-compatible environment that supports Flash Player. If you're trying to port it to another platform, then don't worry - Grapefruit is designed to be super easy to port as well!

Grapefruit itself requires the `electron`, `os`, `path`, and `original-fs` modules to be able to run. It also needs to be able to load `.json` files as well as, by default, files inside of a `.asar` archive. However, using `libdir`, you can change the `.asar` requirement.

AJ Classic itself may require additional modules, and might not work out of the box. AJ Classic specifically uses Electron v11.5.0, and this is the only currently known version of Electron it works with.

I will be making docs for porting Grapefruit to other platforms eventually.

## FAQ
### Do I have to install Grapefruit manually?
No. You can find installation instructions in [INSTALL.md](INSTALL.md).

### Does this actually work?
Yes, Grapefruit has been tested on Arch Linux and Crostini.

### Why no Windows/Mac version?
AJ Classic has official Windows/Mac clients, so we didn't think it was worth it to make a wrapper.

### Wait, is it true this is coming to phones?
Yes, we've actually been figuring out how to get it to run on both iOS and Android via Termux and UTM SE, respectively. It also works on mobile Linux distros - like Ubuntu Touch.

### And TVs? That one's a joke, right?
Nope! Both Samsung and LG TVs run Linux *and* have glibc. And with Electron's `BrowserView`, we don't even need X11 anymore - we can just push each frame to Tizen's native rendering API.
