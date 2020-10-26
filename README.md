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

## Installed Packages
 - adobe-source-han-sans-cn-fonts 2.001-2
 - adobe-source-sans-pro-fonts 3.006-2
 - alsa-utils 1.2.3-2
 - android-sdk 26.1.1-1
 - android-tools 30.0.3-1
 - android-udev 20200613-1
 - asciidoc 9.0.2-1
 - autoconf 2.69-7
 - autocutsel 0.10.0-3
 - automake 1.16.2-3
 - barrier 2.3.3-1
 - base 2-2
 - binutils 2.34-5
 - bison 3.6.4-1
 - bluedevil 1:5.19.4-1
 - brave-bin 1:1.12.112-2
 - breeze 5.19.4-1
 - breeze-gtk 5.19.4-1
 - bridge-utils 1.7-1
 - caprine 2.48.0-1
 - cava 0.7.1-1
 - code 1.48.0-1
 - compton-tryone-git 0.1_beta2.95.g241bbc5-1
 - conky 1.11.5-4
 - dhcpcd 9.1.4-2
 - discord 0.0.12-1
 - discover 5.19.4-1
 - dmenu 4.9-2
 - docker-machine-driver-kvm2 1.12.0-1
 - dotnet-sdk 3.1.7.sdk107-1
 - drkonqi 5.19.4-1
 - ebtables 2.0.10_4-8
 - efibootmgr 17-1
 - elementary-planner-git 2.4.6.r29.ga1257bec-1
 - energia 1.8.10E23-1
 - escrotum-git 0.2.1.r47.abcab0e-1
 - evince 3.36.7-1
 - fakeroot 1.24-2
 - feh 3.4.1-1
 - flex 2.6.4-3
 - gcc 10.2.0-3
 - gcc-fortran 10.2.0-3
 - gconf-editor 3.0.1-5
 - gcr 3.36-1
 - gimp 2.10.20-1
 - git 2.28.0-1
 - gnome-keyring 1:3.36.0-1
 - gnome-shell-pomodoro 0.17.0-1
 - godot-bin 3.2.3-1
 - google-chrome 86.0.4240.75-1
 - gparted 1.1.0-1
 - graphicsmagick 1.3.35-2
 - groff 1.22.4-3
 - grub 2:2.04-8
 - grub-customizer 5.1.0-2
 - gst-libav 1.16.2-2
 - hstr 2.2-1
 - htop 2.2.0-3
 - inotify-tools 3.20.2.1-1
 - inxi 3.1.04-1
 - jdk8-openjdk 8.u265-1
 - kactivitymanagerd 5.19.4-1
 - kde-cli-tools 5.19.4-1
 - kde-gtk-config 5.19.4-1
 - kdeconnect 20.08.0-1
 - kdecoration 5.19.4-1
 - kdeplasma-addons 5.19.4-1
 - kgamma5 5.19.4-1
 - khotkeys 5.19.4-1
 - kinfocenter 5.19.4-1
 - kmenuedit 5.19.4-1
 - knetattach 5.19.4-1
 - kscreen 5.19.4-1
 - kscreenlocker 5.19.4-1
 - ksshaskpass 5.19.4-1
 - ksysguard 5.19.4-1
 - kubectl 1.18.5-1
 - kwallet-pam 5.19.4-1
 - kwayland-integration 5.19.4-1
 - kwayland-server 5.19.4-2
 - kwin 5.19.4-1
 - kwrited 5.19.4-1
 - libkscreen 5.19.4-1
 - libksysguard 5.19.4-1
 - libtool 2.4.6+42+gb88cebd5-13
 - liburcu 0.11.0-2
 - libvirt 6.5.0-1
 - lightdm 1:1.30.0-3
 - lightdm-webkit-theme-aether 2.2.2-1
 - lightdm-webkit2-greeter 2.2.5-3
 - linux 5.8.1.arch1-1
 - linux-firmware 20200721.2b823fc-1
 - lshw B.02.19.2-1
 - lxappearance 0.6.3-3
 - m4 1.4.18-3
 - maim 5.6.3-2
 - make 4.3-3
 - man-db 2.9.3-1
 - memtester 4.4.0-1
 - milou 5.19.4-1
 - moc 1:2.5.2-3
 - mongodb-bin 4.4.0-1
 - mongodb-compass 1.21.2-1
 - mono 6.10.0.104-1
 - neofetch 7.1.0-1
 - nmap 7.80-3
 - noto-fonts-emoji 20200720-1
 - npm 6.14.7-1
 - ntfs-3g 2017.3.23-4
 - ntp 4.2.8.p15-1
 - obs-studio 25.0.8-2
 - openssl-1.0 1.0.2.u-1
 - openvpn-protonvpn 20200207-1
 - oxygen 5.19.4-1
 - p3x-onenote 2020.10.105-1
 - pandoc-bin 2.10.1-1
 - pantheon-calendar 5.0.6-1
 - pantheon-terminal 5.5.2-1
 - pantheon-videos 2.7.2-1
 - papirus-icon-theme 20200801-1
 - parcellite 1.2.1-4
 - patch 2.7.6-8
 - pavucontrol 1:4.0-2
 - pfetch 0.6.0-1
 - pkgconf 1.7.3-1
 - plank 0.11.89-2
 - plasma-browser-integration 5.19.4-1
 - plasma-desktop 5.19.4-1
 - plasma-integration 5.19.4-1
 - plasma-nm 5.19.4-1
 - plasma-pa 5.19.4-1
 - plasma-sdk 5.19.4-1
 - plasma-thunderbolt 5.19.4-1
 - plasma-vault 5.19.4-1
 - plasma-workspace 5.19.4-2
 - plasma-workspace-wallpapers 5.19.4-1
 - polkit-kde-agent 5.19.4-1
 - powerdevil 5.19.4-1
 - powerline-fonts-git r202.e80e3eb-1
 - protonvpn-linux-gui 2.1.1-1
 - pulseaudio 13.0-3
 - python-pywal 3.3.0-2
 - qemu 5.1.0-1
 - qemu-block-gluster 5.1.0-1
 - qtile 0.16.1-1
 - rmlint 2.10.1-1
 - rstudio-desktop-bin 1.3.1073-1
 - ruby 2.7.1-2
 - rxvt-unicode 9.22-10
 - scrot 1.4-1
 - sddm-kcm 5.19.4-1
 - slack-desktop 4.7.0-1
 - snappy-player 1.0-7
 - spice-vdagent 0.20.0+6+g8adf50d-1
 - spicetify-cli 1.0.2-1
 - spotify 1:1.1.42.622-2
 - spotify-adblock-linux 1.1-1
 - sudo 1.9.2-1
 - systemsettings 5.19.4-1
 - texinfo 6.7-3
 - texlive-bibtexextra 2020.55376-1
 - texlive-fontsextra 2020.55407-1
 - texlive-formatsextra 2020.54498-1
 - texlive-games 2020.55271-1
 - texlive-humanities 2020.55389-1
 - texlive-latexextra 2020.55418-1
 - texlive-music 2020.54758-2
 - texlive-pictures 2020.55342-1
 - texlive-pstricks 2020.55289-1
 - texlive-publishers 2020.55415-1
 - texlive-science 2020.55390-1
 - thunar 1.8.15-1
 - tilda 1.5.2-1
 - tk 8.6.10-2
 - tmux 3.1_b-1
 - ttf-dejavu 2.37+18+g9b5d1b2f-2
 - ttf-droid 20121017-8
 - ttf-ibm-plex 5.1.0-1
 - ttf-material-icons-git r124.224895a86-1
 - ttf-monaco 6.1-6
 - unityhub 2.3.2-1
 - unzip 6.0-14
 - update-grub 0.0.1-7
 - user-manager 5.19.4-1
 - v4l2loopback-dkms 0.12.5-1
 - vim 8.2.0814-3
 - virt-manager 2.2.1-2
 - virt-viewer 8.0-2
 - visual-studio-code-insiders 1594993029-1
 - vlc 3.0.11.1-3
 - vundle 0.10.2-2
 - wget 1.20.3-3
 - which 2.21-5
 - xar 1.6.1-4
 - xarchiver 0.5.4.15-1
 - xawtv 3.107-1
 - xclip 0.13-3
 - xcolor 0.4.0-1
 - xdg-desktop-portal-kde 5.19.4-1
 - xdg-utils 1.1.3+19+g9816ebb-1
 - xfce4-screenshooter 1.9.7-2
 - xfce4-settings 4.14.3-1
 - xorg-server 1.20.8-3
 - xorg-xev 1.2.4-1
 - xorg-xinit 1.4.1-2
 - xorg-xkill 1.0.5-2
 - xorg-xprop 1.2.4-2
 - xorg-xrandr 1.5.1-2
 - xorg-xwininfo 1.1.5-2
 - yadm 2.4.0-1
 - yay 10.0.3-1
 - zip 3.0-9
 - zoom 5.2.440215.0803-1
 - zsh 5.8-1
