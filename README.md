# 64bitpanda's dotfiles: Manjaro-Summer

Summer 2019 Openbox rice! Made a nice, clean environment to support the wallpaper I drew.

<!-- REMEMBER TO EDIT THIS!!! -->
![Screenshot](screenshot.png)

 - **OS:** Manjaro
 - **DE:** [Openbox-Patched](https://github.com/dylanaraps/openbox-patched)
 - **Greeter:** [Aether](https://github.com/NoiSek/Aether)
 - **GTK Theme:** [Lumeire](https://github.com/addy-dclxvi/gtk-theme-collections)
 - **Openbox Theme:** [Arrondie-Froly](https://github.com/addy-dclxvi/openbox-theme-collections)
 - **Compositor:** [Compton with Tryone's Kawase Blur Patch](https://github.com/tryone144/compton)
 - **Dock:** Plank
 - **Bar:** Polybar
 - **Wallpaper:** [Drawn by myself :D](https://bencuan.me)

## Recommended Base
 - [Manjaro Openbox](https://manjaro.org/download/openbox/)

## Keyboard Shortcuts
 |  **Desktops and Windows**   	|                    	|
|-------------------------	|--------------------	|
| Ctrl+Alt+Left/Right   	|  Switch Desktop	|
| Super+Shift+Left/Right   	|  Move Window to Desktop	|
| Control+Super+F   	|  Maximize	|
| Super+Shift+F   	| Minimize	|
| Control+Left/Right/Up/Down   	| Resize Window	|


| **Applications**           	|                    	|
|-------------------------	|--------------------	|
| Super+Shift+S or Print or Alt+Print                 	|  Take a screenshot        	|
| Super+F               	|  File Manager        	|
| Super+Enter              	|  Terminal       	|
| Super+W             	|  Chromium       	|
| Super+V             	|  Volume Control       	|
| Ctrl+Space             	|  Synapse    	|
| Super+Tab           	|  Show all windows    	|
| Super+Space           	|  Switch Language Input    	|


| **Power Management**        	|                    	|
|-------------------------	|--------------------	|
| Super+L                 	| Lock               	|
| Super+Shift+L                 	| Suspend              	|
| Super+Ctrl+Alt+Shift+L                 	| Shut Down           	|

## Installation Guide

### Part 1. Base Install
 1. Download the Manjaro distro linked above.
 2. Use a disk imaging tool (like Rufus) to create a live USB. MAKE SURE IT IS ON DD MODE!!!!! (or use the `dd` command)

### Part 2. Getting the Essentials
 1. Get yay: `git clone https://aur.archlinux.org/yay.git`, then `cd yay` then  `makepkg -si`
 2. Update packages: `yay -Syyu`
 3. Basic programs: `visual-studio-code-bin`. `discord`, `jdk8`, `rxvt-unicode`, `python-pip`, `nodejs`, `npm`, `adobe-source-code-pro-fonts`, `ttf-material-icons-git`
 4. If necessary, customize grub order using `grub-customizer` and set EFI boot order using `efibootmgr` and `efibootmgr -o #1,#2,#3......` (If this doesn't work, the BIOS might be overriding it. Check the settings there)

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
 2. Set theme and fonts using Manjaro appearance panel (press the Super key -> Settings -> Appearance)
 3. Set openbox themes using `obconf`

### Part 6. Pywal and Color Schemes
 1. Set color scheme and wallpaper: `wal -i path/to/image.png -b "#260422 -a 50` (extra parameters are for blur, adjust accordingly)
 2. Add `wal -R` to .bashrc and .zshrc
 3. Run `nitrogen` and set the wallpaper to the same one from the `wal` command
 4. Get [vscode-wal](https://github.com/Bluedrack28/vscode-wal) and follow the instructions for vscode color schemes

### Part 7. Installing the config files
 1. Clone the repository. `git clone https://github.com/64bitpandas/dotfiles`
 1. Run `cd dotfiles && git checkout manjaro-summer`
 1. Run a `cp -r` to copy `.config` to `~/`
 1. Copy .Xresources and .zshrc to `~/`
 1. Enjoy the beautiful desktop :D

### Part 8: Multilanguage Support
  1. Get `ibus`, `ibus-libpinyin`,  `adobe-source-han-sans-cn-fonts`
  3. Run `ibus-setup` to configure languages, then restart for it to take effect


**The below are dev notes on how to recreate this config from scratch. If downloading, ignore the below parts and instead simply copy over the .config file from this repo to your home directory and reboot.**

 1. Set up screenshots: Disable default print sequence and use custom script
 2. Add `plank &` and `opensnap &` and `wal -R &` and `ibus-daemon` to `autostart`
 3. Change `W-l` to lock instead of minimize
 4. Disable resize window on W-S-Left/Right
 5. Replace Windows+Tab to skippy-xd and remove Windows+S (too easy to confuse with ctrl+s)
 6. Add `<cornerRadius>8</cornerRadius>` to `<theme>` section of rc.xml
 7. Make suspend and screenshot scripts, remember to chmod!
 8. Remove `W-space` shortcut
 9. Base compton config credits: https://github.com/dougmaitelli/dotfiles/blob/master/.config/compton.conf
 10. Add plank to blur ignore and make vscode more opaque\
 11. .Xresources for urxvt ricing: `URxvt*font: xft:Source Code Pro Medium:size=16`
 12.  2. Add to .bashrc and .zshrc: 
  `
  export GTK_IM_MODULE=xim
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=xim
`
  13. Add `~/.config/polybar/launch-polybar.sh` to autostart
  14. To get info for any application, run `wmctrl -l` then `obxprop --id 0xSOMETHING`
  15. Cava tutorial: https://www.devpy.me/how-to-add-a-music-visualizer-to-your-linux-desktop/



