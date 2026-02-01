# Grapefruit
Grapefruit is a cross-platform launcher and runtime for Animal Jam Classic, similar to [AJCEverywhere](https://github.com/themirrazz/ajc-everywhere). But unlike AJCEverywhere, it's super lightweight. All of the core logic is implemented in a single file, which is only ~~91~~89 lines long (including blank lines and comments). However, it does support three additional modules - EveryUpdater, LibInstall, and Libdir - for extended functionality.

## Installing Grapefruit
### Windows or Mac
Currently, Grapefruit isn't available for Windows or Mac. I didn't think it'd make sense since it's just an Electron-based wrapper around the official client. If you're on Windows or Mac, you can go to AJ Classic's [official website](https://classic.animaljam.com/?utm_source=grapefruit-gh) and download it that way.

There are `.tar.gz` builds available for Windows 32-bit and 64-bit, but those only include the Grapefruit runtime itself, not the AJ Classic game files or Pepper Flash.

### Ubuntu
Run the official Ubuntu install script:
```bash
curl -L https://github.com/themirrazz/grapefruit/releases/download/v1.0.0/ubuntu-x64.sh | sh   
```

### Arch Linux
First, you'll need 7-Zip and an AUR manager installed. You can install 7-Zip using this command:
```bash
sudo pacman -S 7zip
```

Using your AUR manager of choice, install the `electron11-bin`, `pepper-flash`, and `ajclassic-grapefruit` packages:
```bash
yay -S electron11-bin pepper-flash ajclassic-grapefruit
```
To start it, just run `aj-classic` in a terminal!

The `ajclassic-grapefruit` library uses your system's copy of Electron/Pepper Flash, so if you don't have Electron 11 and Pepper Flash already installed, then it won't launch.

If you're using KDE, you might see an "AJ Classic" desktop entry if you search for "AJ Classic." This is the old desktop entry from AJCEverywhere (hence why it says "Via AJCEverywhere" below it), and it doesn't work, and, for whatever mysterious reason, never has. Instead, you should launch it from the terminal. This shortcut *might* work in GNOME or other desktop environments, but I have *NOT* tested it!

In addition, you can download the PKGBUILD from the AUR and install it manually, either by using `makepkg` or by following all of the instructions inside of the PKGBUILD and placing all of the files by hand. 

### Fedora
TBD

### Gentoo
TBD

### Crostini (x64)
Crostini is the built-in Linux VM on Chromebooks. You can easily install Grapefruit inside of Crostini by using the Ubuntu installer:
```bash
curl -L https://github.com/themirrazz/grapefruit/releases/download/v1.0.0/ubuntu-x64.sh | sh   
```
At this moment, we only support Crostini on x64-based Chromebooks. If you have an ARM-based Chromebook, you'll need to install it directly on chromeOS.

### Raspbian (32-bit)
TBD

### Raspbian (64-bit)
TBD

### chromeOS
TBD

### FreeBSD
TBD

## Building from source
To install the dependencies, run `npm install`. You can then use `make` to build versions for Linux or Windows. If you're on a Linux-based system, you can add `-tgz` to package a build in `.tar.gz` format. You can also use `npm test` to run Grapefruit. If you're on Arch Linux and have the `electron11-bin` package from the AUR and don't intend on building your own packages, you can run `electron11 . --no-sandbox` to run Grapefruit without needing to install its dependencies.

## Porting Grapefruit
Grapefruit is designed to be cross-platform. All it requires is an Electron-compatible environment that supports Flash Player. If you're trying to port it to another platform, then don't worry - Grapefruit is designed to be super easy to port as well!

Grapefruit itself requires the `electron`, `os`, `path`, and `original-fs` modules to be able to run. It also needs to be able to load `.json` files as well as, by default, files inside of a `.asar` archive. However, using `libdir`, you can change the `.asar` requirement.

AJ Classic itself may require additional modules, and might not work out of the box. AJ Classic specifically uses Electron v11.5.0, and this is the only currently known version of Electron it works with.

I will be making docs for porting Grapefruit to other platforms eventually.

## FAQ
### Is Grapefruit replacing AJCEverywhere?
Yes, AJCEverywhere will no longer be maintained.

### Does Grapefruit modify the actual game?
No. Just like AJCEverywhere, Grapefruit is able to run AJ Classic from an unmodified asar file. It does make minor in-memory tweaks to make sure that automatic updates work correctly (or are disabled if there is no update service provided), but the core logic of the game is not touched and the original `app.asar`/`game.asar` does not get overwritten.

### Does Grapefruit support automatic updates?
Grapefruit doesn't have automatic updates built in - neither for itself nor the game. However, Grapefruit *does* have the ability to load external modules, both for updating the game as well as installing it if the initial game files are missing.

### Does Grapefruit come with the game files/Flash?
For copyright reasons, Grapefruit does *not* include the AJ Classic game files or Flash in its source code or packages. However, some of the installers *do* install the game files/Flash from official sources, but they do not include said files themselves.

### Will Grapefruit hack me?
Grapefruit will not hack you. However, you can get hacked if another malicious program tampers with the files, or if you download Grapefruit from an untrusted source. Make sure you don't download Grapefruit (or any program, for that matter) from random websites you don't trust, and *definently* don't run them as root/admin!
