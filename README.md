# Grapefruit
Grapefruit is a cross-platform launcher and runtime for Animal Jam Classic. Unlike [AJCEverywhere](https://github.com/themirrazz/ajc-everywhere), it's super lightweight. All of the core logic is implemented in a single file, which is only 91 lines long (including blank lines and comments). However, it does support three additional modules - EveryUpdater, LibInstall, and Libdir - for extended functionality.

## Installing Grapefruit
### Windows or Mac
Currently, Grapefruit isn't available for Windows or Mac. I didn't think it'd make sense since it's just an Electron-based wrapper around the official client. If you're on Windows or Mac, you can go to AJ Classic's [official website](https://classic.animaljam.com/?utm_source=grapefruit-gh) and download it that way.

### Ubuntu
TBD

### Arch Linux
I'm making yet *another* package for the AUR. Unlike this one, it'll also automatically download the game files as well as Flash Player.

### Raspbian (32-bit)
TBD

### Raspbian (64-bit)
TBD

## Porting Grapefruit
Grapefruit is designed to be cross-platform. All it requires is an Electron-compatible environment that supports Flash Player. If you're trying to port it to another platform, then don't worry - Grapefruit is designed to be super easy to port as well!

Grapefruit itself requires the `electron`, `os`, `path`, and `original-fs` modules to be able to run. It also needs to be able to load `.json` files as well as, by default, files inside of a `.asar` archive. However, using `libdir`, you can change the `.asar` requirement.

AJ Classic itself may require additional modules, and might not work out of the box. AJ Classic specifically uses Electron v11.5.0, and this is the only currently known version of Electron it works with.

I will be making docs for porting Grapefruit to other platforms eventually.
