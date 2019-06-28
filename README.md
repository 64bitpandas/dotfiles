# 64bitpanda's dotfiles: Manjaro-Summer

Summer 2019 Openbox rice! Wallpaper drawn by me.

<!-- REMEMBER TO EDIT THIS!!! -->
![Screenshot]()

## Recommended Base
 - [Manjaro Openbox](https://manjaro.org/download/openbox/)

## Installation Guide

### Part 1. Base Install
 1. Download the Manjaro distro linked above.
 2. Use a disk imaging tool (like Rufus) to create a live USB. MAKE SURE IT IS ON DD MODE!!!!! (or use the `dd` command)

### Part 2. Getting the Essentials
 1. Get yay: `git clone https://aur.archlinux.org/yay.git`, then `cd yay` then  `makepkg -si`
 2. Update packages: `yay -Syyu`
 3. Basic programs: `visual-studio-code-bin`. `discord`, `jdk8`, `pantheon-terminal`, `python-pip`
 4. If necessary, customize grub order using `grub-customizer` and set EFI boot order using `efibootmgr` and `efibootmgr -o #1,#2,#3......`

### Part 3. Basic Ricing/Desktop Necessities
 1. Grab opensnap for snappy windows
 2. Rounded corners: `openbox-patched`
 3. Grab `plank`
 4. Disable tint2: `pkill tint2` then follow the manjaro popup
 5. [Get color emojis](https://www.reddit.com/r/linux/comments/ao0mp3/how_to_better_enable_color_emojis/)
 6. Set default terminal to `io.elementary.terminal -w "%U"`
 7. Get wal: `sudo pip3 install pywal`
 8. Set cursors: `paper-gtk-theme-git` 
 9. Multilanguage support: TODO

### Part 4. Lightdm Configuration
 1. Get `lightdm-webkit2-greeter` and `lightdm-webkit-theme-aether`
 2. Set avatar: `Append Icon=/path/to/your/avatar.png to the bottom of the file at /var/lib/AccountsService/users/<youraccountname>`
 3. TODO: Edit aether to actually work properly

### Part 5. GTK/Openbox Themes

### Part 6. Polybar Ricing

### Part 7. Conky

### Part 8. Pywal and Color Schemes


**The below are dev notes on how to recreate this config from scratch. If downloading, ignore the below parts and instead simply copy over the .config file from this repo to your home directory and reboot.**

### Part A. Openbox Configuration
 1. Set up screenshots: Disable default print sequence and use custom script
 2. Add `plank &` and `opensnap &` to `autostart`
 3. Change `W-l` to lock instead of minimize
 4. Disable resize window on W-S-Left/Right
 5. Replace Windows+Tab to skippy-xd and remove Windows+S (too easy to confuse with ctrl+s)
 6. Add `<cornerRadius>8</cornerRadius>` to `<theme>` section of rc.xml
 7. Make suspend and screenshot scripts, remember to chmod!



 1. Clone the repository. `git clone https://github.com/dbqeo/dotfiles`
 1. Run `cd dotfiles && git checkout thisbranch`
 1. Run a `cp -r` to copy `.config` to `~/` and `lightdm` to `/etc/`
 1. Install all the packages in the lists below.
 1. If you're upgrading from Windows, make sure you fix your clock using `date +%T -s "HH:MM:SS"`
 1. Add `nospectre_v2 rcu-nocbs=0-7` to boot if on a r3 2200g or r5 2400g.
 1. Include any branch-specific instructions here.
 1. Enjoy the beautiful desktop :D

### Package Lists

 ### Keyboard Shortcuts
 |  **Desktops and Windows**   	|                    	|
|-------------------------	|--------------------	|
| Ctrl+Alt+Left/Right   	|  Switch Desktop	|
| Super+Shift+Left/Right   	|  Move Window to Desktop	|
| Control+Super+F   	|  Maximize	|
| Super+Shift+F   	| Minimize	|
| Control+Left/Right/Up/Down   	| Resize Window	|



| **Applications**           	|                    	|
|-------------------------	|--------------------	|
| Super+Shift+S or Print or A+Print                 	|  Take a screenshot        	|
| Super+F               	|  File Manager        	|
| Super+Enter              	|  Terminal       	|
| Super+W             	|  Chromium       	|
| Super+V             	|  Volume Control       	|
| Ctrl+Space             	|  Synapse    	|
| Super+Tab           	|  Show all windows    	|

| **Power Management**        	|                    	|
|-------------------------	|--------------------	|
| Super+L                 	| Lock               	|
| Super+Shift+L                 	| Suspend              	|
| Super+Ctrl+Alt+Shift+L                 	| Shut Down           	|

