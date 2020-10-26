# 64bitpanda's dotfiles: SummerSkyRedux

This is a graphical overhaul of the [SummerSky](https://github.com/64bitpandas/dotfiles/tree/summersky) configurations. The major difference is the DE: I've switched to KDE Plasma from QTile.

<!-- REMEMBER TO EDIT THIS!!! -->
![Screenshot](wallpapers/demo.png)

 - **OS:** Arch Linux
 - **DE:** [KDE Plasma](https://kde.org/plasma-desktop/)
 - **GTK Theme:** [Fantome](https://github.com/addy-dclxv/gtk-theme-collections)
 - **Greeter:** [Aether](https://github.com/NoiSek/Aether)
 - **Compositor:** [Compton with Tryone's Kawase Blur Patch](https://github.com/tryone144/compton)

## Recommended Base
Follow the steps in the [Arch Linux installation guide](https://wiki.archlinux.org/index.php/installation_guide) to make sure the pre-install is good to go!

## Keyboard Shortcuts
I have Super mapped to the Windows key on my keyboard.

| **Applications**           	|                    	|
|-------------------------	|--------------------	|
| Super+Shift+S |  Take a screenshot |
| Super+F  |  File Manager (thunar)       	|
| Super+Enter  	|  Terminal (urxvt)     	|
| Super+G             	|  Firefox       	|
| Super+C             	|  vscode (code)      	|
| Super+Space           	|  dmenu    	|
| Super+X           	|  play/pause spotify   	|


| **Power Management**        	|                    	|
|-------------------------	|--------------------	|
| Super+L                 	| Lock               	|
| Super+Shift+L             | Suspend              	|

## What's Included

Here's an inexhaustive list of my modifications:

### Compton
My config file is at `.config/compton.conf`. The main change I made is to set custom window opacities based on the window name. If you would like to add more blurry windows, use `xprop` to discover the window name or class and add it to the `opacity-rule` list.

### Bash
On startup, bash runs `pfetch` and refreshes the wal color scheme. Pressing the up arrow will use history completion rather than the default behavior. The font I use is IBM Plex Mono.

### Vim
My vimrc is a modified version of [Ultimate Vimrc](https://github.com/amix/vimrc).

### Spotify
My Spotify config uses [Spicetify](https://github.com/khanhas/spicetify-cli) for custom theming. For colors, I use wal-defined system colors, and for custom CSS I use a modified version of [Gradianto](https://github.com/morpheusthewhite/spicetify-themes/tree/master/Gradianto).

### Aether
I use [this wallpaper](wallpapers/lightdm-wallpaper.jpg) with the LightDM Aether theme.


## Installation Guide

### Part 1. Base Install
 1. Download Arch Linux [here](https://www.archlinux.org/download/).
 2. Use a disk imaging tool (like Rufus) to create a live USB. MAKE SURE IT IS ON DD MODE!!!!! (or use the `dd` command)
 3. Get KDE Plasma: `sudo pacman -S plasma-desktop`

### Part 2. Getting the Essentials
 1. Get yay: `git clone https://aur.archlinux.org/yay.git`, then `cd yay` then  `makepkg -si`
 2. Update packages: `yay -Syyu`
 3. If necessary, customize grub order using `grub-customizer` and set EFI boot order using `efibootmgr` and `efibootmgr -o #1,#2,#3......` (If this doesn't work, the BIOS might be overriding it. Check the settings there)

### Part 3. Basic Ricing/Desktop Necessities
 1. Grab opensnap for snappy windows
 2. Rounded corners patch: `openbox-patched`
 3. Blur patch: `compton-tryone-git`
 3. Grab `plank`
 5. [Get color emojis](https://www.reddit.com/r/linux/comments/ao0mp3/how_to_better_enable_color_emojis/)
 6. Set default terminal to `urxvt`
 7. Get wal: `sudo pip3 install pywal`
 8. Set cursors: `paper-gtk-theme-git` 
 9. Set terminal in thunar: `urxvt -cd %f`

### Part 4. Lightdm Configuration
 1. Get `lightdm-webkit2-greeter` and `lightdm-webkit-theme-aether`
 2. Set avatar: `Append Icon=/path/to/your/avatar.png to the bottom of the file at /var/lib/AccountsService/users/<youraccountname>`. Also change the profile directory in `/etc/lightdm/lightdm-webkit2-greeter.conf`
 3. Set wallpaper: Edit the files located in `/usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/wallpapers/`.
 4. Set Aether theme settings by going into the settings panel- hover near the bottom left corner to access.

### Part 5. GTK/Openbox Themes
 1. git clone https://github.com/addy-dclxv/gtk-theme-collections ~/.themes
 2. git clone https://github.com/addy-dclxvi/openbox-theme-collections ~/.themes
 2. Set theme and fonts using `lxappearance`.

### Part 6. Pywal and Color Schemes
 1. Set color scheme and wallpaper: `wal -i path/to/image.png -b "#260422 -a 50` (extra parameters are for blur, adjust accordingly)
 2. Add `wal -R` to .bashrc and .zshrc
 3. Run `nitrogen` and set the wallpaper to the same one from the `wal` command
 4. Get [vscode-wal](https://github.com/Bluedrack28/vscode-wal) and follow the instructions for vscode color schemes


### Part 7. Installing the config files
 1. Clone the repository. `git clone https://github.com/64bitpandas/dotfiles`
 1. Run `cd dotfiles` then `git checkout summersky`.
 1. Move the files into your `$HOME` directory.
 1. Set the themes using `lxappearance` (Fantome with Papirus icons).
 1. Enjoy the beautiful desktop :D


### Part 8: Multilanguage Support
  1. Get `ibus`, `ibus-libpinyin`,  `adobe-source-han-sans-cn-fonts`
  3. Run `ibus-setup` to configure languages, then restart for it to take effect
