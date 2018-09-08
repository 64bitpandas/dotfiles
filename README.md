# dbqeo's dotfiles: Openbox-OSX Branch

For best results, use Arch Linux! :)

Welcome to my Linux dotfile collection! This is the Openbox-OSX branch, which contains a config for the Openbox desktop environment inspired by Mac OS X.

![Screenshot Coming Soon!]()

### Recommended Configuration
 - OpenBox DE
 - Anarchy Linux (Arch distro)
 - Desktop PC (Laptop support is incomplete)

### How to Install
 1. Clone the repository. `git clone https://github.com/dbqeo/dotfiles`
 2. Run a `cp -r` to copy `.config` to `~/` and `lightdm` to `/etc/`
 3. Don't forget the `.bashrc`! (Copy these to the user directory)
 4. Install all the packages in the lists below.
 5. If you're upgrading from Windows, make sure you fix your clock using `date +%T -s "HH:MM:SS"`
 6. Configure CUPS printers.
 7. Configure Ibus languages (if applicable).
 8. Add `nospectre_v2 rcu-nocbs=0-7` to boot if on a r3 2200g or r5 2400g.
 9. Enjoy the beautiful desktop :D
 
### Package Lists

**Required packages**
 - firefox-developer-edition
 - python-pip
 - imagemagick
 - pywal (pip3 install pywal)
 - lightdm
 - lightdm-webkit2-greeter
 - lightdm-webkit-theme-litarvan
 - numix-gtk-theme
 - paper-icon-theme
 - git
 - plank
 - openbox-patched
 - io.elementary.terminal (pantheon-terminal)
 - San Francisco font (grab from your nearest Mac)
 - macos-icon-theme
 - [High Sierra Theme](https://github.com/B00merang-Project/macOS) (Included in .themes folder)
 - [Mojave and High Sierra Plank Themes](https://www.gnome-look.org/p/1248226/) Install to /usr/share/plank/themes
 
**Nice to have**
 - discord
 - visual-studio-code-bin
 - spotify
 - ibus-libpinyin
 - adobe-source-han-sans-cn-fonts
 - ibus
 - pacaur
 - gparted
 - shutter
 - neovim
 - grub-customizer
 - gimp
 - cups
 - xflux-gui-git
 - wine + Microsoft Office
 - steam
 - rclone

### Keyboard Shortcuts

|  **Desktops and Windows**   	|                    	|
|-------------------------	|--------------------	|
| Ctrl+Alt+<Left/Right>   	|  Switch to Desktop 	|
|  Shift+Alt+<Left/Right> 	|  Send to Desktop   	|
| Super+D                 	| Toggle Desktop     	|
|  Alt+F4 or Super+Q      	| Close              	|
| Alt+Escape              	| Send to Bottom     	|
| Alt+Tab                 	| Cycle Windows      	|


| **Applications**           	|                    	|
|-------------------------	|--------------------	|
| Super+M                 	|  Firefox           	|
| Super+Return            	| Terminal           	|
| Super+F                 	| Thunar             	|


| **Power Management**        	|                    	|
|-------------------------	|--------------------	|
| Super+L                 	| Lock               	|
| Ctrl+Super+Shift+L      	| Shut Down          	|
| Super+Shift+L           	|                    	|


### Coming soon (?)
 - Elementary OS / Ubuntu / Xubuntu dotfiles
 - i3
 - Windows (HAHAHAHAH jk lol)
 - Do a `:%s/nano/nvim/g`
 - Customize lightdm greeter
 - Fix oblogout
 - Get rid of ugly black borders on window button hover (openbox)
 - Upload wallpaper links to readme

#### View other branches
 - [BSPWM](https://github.com/dbqeo/dotfiles/tree/bspwm)
 - [OpenBox](https://github.com/dbqeo/dotfiles/tree/openbox)