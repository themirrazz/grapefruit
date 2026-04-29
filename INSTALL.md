# Installing Grapefruit
Grapefruit is available for many different platforms. Find your platform from the list, and follow the instructions. If your platform isn't listed, you can always [install Grapefruit manually](https://github.com/themirrazz/grapefruit#installing-grapefruit).

## Windows and Mac
Due to technical limitations, I won't be releasing Grapefruit for Windows or Mac. Grapefruit Guava, if I decide to make it, *will* be available for Windows and Mac.

## Ubuntu
>[!TIP]
>These instructions should also work on Linux Mint, ZorinOS, Pop!_OS, KDE Neon, and most other Ubuntu-based distros.

Open your terminal, and run the official install script:
```bash
curl -L https://github.com/themirrazz/grapefruit/releases/download/v1.0.1/ubuntu-x64.sh | sh   
```
And that's it! You should see "AJ Classic (Grapefruit)" appear in your Activities!

We are also considering a version of Grapefruit that can be installed via the [Snap Store](https://snapcraft.io/store), but we don't know how viable this is.

## Fedora/RHEL
We currently don't have instructions available for installing Grapefruit on Fedora.

## Gentoo
Compile Electron v11.5.0. You can find the source code and ffmpeg binaries [here](https://github.com/electron/electron/releases/tag/v11.5.0). (You can also install it via `emerge`, if a package exists.) Then download Pepper Flash, the AJ Classic files, and the Grapefruit source. (You can look at the other install scripts to see where to find these.

## Arch Linux
First, you'll need to install 7-zip. You can install it using this command:
```bash
sudo pacman -S 7zip
```
Next, you'll need to install the `electron11-bin`, `pepper-flash`, and `ajclassic-grapefruit` packages from the AUR. If you have an AUR package manager, you can easily do this from the command line:
```bash
yay -S electron11-bin pepper-flash ajclassic-grapefruit
```

We're also working on a version that installs its own copy of PepperFlash and Electron.

Once everything's installed, just run `aj-classic` in your terminal and you're good to go! Please note that if you're using Wayland, XWayland is required. **Grapefruit will not work without an X11 server.**

## Crostini
>[!WARNING]
>chromeOS runs Crostini inside of a container inside of a VM. This can have significant performance implications, occasionally leading to the game entirely freezing. You may have to restart Grapefruit multiple times, and the experience might not be smooth.

TBD

## Raspbian (32-bit)
TBD

## Raspbian (64-bit)
TBD

## Android
>[!CAUTION]
>This method requires a third-party app (Termux) to be installed on your device. I can't vouch for the security/data practices of Termux, so use at your own risk.

TBD
