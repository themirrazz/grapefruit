# Installing Grapefruit
Grapefruit is available for many different platforms. Find your platform from the list, and follow the instructions. If your platform isn't listed, you can always [install Grapefruit manually](https://github.com/themirrazz/grapefruit#installing-grapefruit).

## Windows or Mac
Currently, Grapefruit isn't available for Windows or Mac. I didn't think it'd make sense because it's just an Electron-based wrapper around the official client. If you're on Windows or Mac, you can go to AJ Classic's [official website](https://classic.animaljam.com/?utm_source=grapefruit-gh) and download it that way.

There are `.tar.gz` builds available for Windows 32-bit and 64-bit, but those only include the Grapefruit runtime itself, not the AJ Classic game files or Pepper Flash.

## Ubuntu
Open your terminal, and run the official install script:
```bash
curl -L https://github.com/themirrazz/grapefruit/releases/download/v1.0.1/ubuntu-x64.sh | sh   
```
And that's it! You should see "AJ Classic (Grapefruit)" appear in your Activities!

We are also considering a version of Grapefruit that can be installed via the [Snap Store](https://snapcraft.io/store), but we don't know how viable this is.

## Mint
TBD

## Fedora
TBD

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

Once everything's installed, just run `aj-classic` in your terminal and you're good to go!

## Crostini
Previously, we told users to just use the Ubuntu installer. For whatever reason, *this did not work.* Therefore, we're working on a new version of the installer, one that will hopefully actually install the game files as well as adding the "AJ Classic (Grapefruit)" entry to the chromeOS launcher.

## Raspbian (32-bit)
We will have a script for 32-bit Raspbian by the end of February.

## Raspbian (64-bit)
We currently need to collect a list of all the 32-bit dependencies that Electron requires. Currently, we haven't found an ARM64 copy of Pepper Flash, so as a result, Grapefruit does not have a native ARM64 build. Instead, the script will install the ARMv7l build, along with all the required 32-bit dependencies.

## Android
TBD

## iOS and iPadOS
We do not have high hopes for this. At all.

## Tizen Linux (Samsung TV)
We are currently experimenting with ways to port Grapefruit to Tizen-based Samsung smart TVs. Samsung smart TVs run Wayland and seem to support native Linux apps, so by bundling Electron and XWayland, it should be possible to download Pepper Flash and the games files. The only other issue is making sure this actually works, and then mapping the remote's input to Electron. We currently do not know if Electron's APIs will also forward input events to Pepper Flash.
