# Grapefruit
Grapefruit is a cross-platform launcher and runtime for Animal Jam Classic, similar to [AJCEverywhere](https://github.com/themirrazz/ajc-everywhere). But unlike AJCEverywhere, it's super lightweight. All of the core logic is implemented in a single file, which is only 91 lines long (including blank lines and comments). However, it does support three additional modules - EveryUpdater, LibInstall, and Libdir - for extended functionality.

## Installing Grapefruit
### Windows or Mac
Currently, Grapefruit isn't available for Windows or Mac. I didn't think it'd make sense since it's just an Electron-based wrapper around the official client. If you're on Windows or Mac, you can go to AJ Classic's [official website](https://classic.animaljam.com/?utm_source=grapefruit-gh) and download it that way.

There are `.tar.gz` builds available for Windows 32-bit and 64-bit, but those only include the Grapefruit runtime itself, not the AJ Classic game files or Pepper Flash.

### Ubuntu
TBD

### Arch Linux
TBD

### Raspbian (32-bit)
TBD

### Raspbian (64-bit)
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
No. Just like AJCEverywhere, Grapefruit is able to run AJ Classic from an unmodified asar file.

### Does Grapefruit support automatic updates?
Grapefruit doesn't have automatic updates built in - neither for itself nor the game. However, Grapefruit *does* have the ability to load external modules, both for updating the game as well as installing it if the initial game files are missing.

### Does Grapefruit come with the game files/Flash?
For copyright reasons, Grapefruit does *not* include the AJ Classic game files or Flash in its source code or packages. However, some of the installers *do* install the game files/Flash from official sources, but they do not include said files themselves.