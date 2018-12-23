# dbqeo's dotfiles: Openbox-Winter Branch

For best results, use Arch Linux! :)

Welcome to my Linux dotfile collection! This is the Openbox-Winter branch, for a snowy blue theme.

![Screenshot](https://github.com/dbqeo/dotfiles/blob/openbox-winter/images/screenshot.png)

![Screenshot 2](https://github.com/dbqeo/dotfiles/blob/openbox-winter/images/screenshot2.png)

### Recommended Configuration
 - OpenBox DE
 - Arch Linux
 - Desktop PC (No power management is included)

### How to Install
 1. Clone the repository. `git clone https://github.com/dbqeo/dotfiles`
 2. Run a `cp -r` to copy `.config` to `~/` and `lightdm` to `/etc/`
 3. Don't forget the `.bashrc`! (Copy these to the user directory)
 4. Install all the packages in the lists below.
 5. If you're upgrading from Windows, make sure you fix your clock using `date +%T -s "HH:MM:SS"`
 6. Configure CUPS printers.
 7. Configure Ibus languages (if applicable).
 8. Add `nospectre_v2 rcu-nocbs=0-7` to boot if on a r3 2200g or r5 2400g.
 9. Apply the themes located in `.themes` using `obconf` and `lxappearance`.
 10. Set the background and color scheme using `wal -i "path/to/wallpaper/jpg" -b "#000000" -a 50`
 12. Don't forget themes for Firefox, VSCode, etc.
 13. Move the background image of your choice for the lock screen to `/usr/share/lightdm-webkit/themes/litarvan/images`.
 14. Don't forget to change the filepaths in `polybar/launch-polybar.sh`, `.bashrc`, `autostart` and your network settings in `autostart` and `polybar/space-theme`.
 14. Place an API key and your city ID in `conky/flea/res/weather`.
 14. Optional: Rice VSCode using https://github.com/Bluedrack28/vscode-wal
 14. Enjoy the beautiful desktop :D
 
### Package Lists

**Required packages**
 - chromium
 - python-pip
 - pywal (pip3 install pywal)
 - lightdm
 - lightdm-webkit2-greeter
 - lightdm-webkit-theme-litarvan
 - papirus-icon-theme
 - git
 - plank
 - openbox-patched
 - graphicsmagick
 - xclip
 - urxvt (unicode-rxvt)
 - adobe-source-sans-pro-fonts
 - ttf-font-awesome
 - ttf-noto-sans
 - thunar
 - skippy-xd
 - conky
 - polybar
 - compton-tryone-git (compton with Kawase blur patch + some other cool features)
 
**Nice to have**
 - discord
 - opensnap
 - visual-studio-code-bin
 - spotify
 - ibus-libpinyin
 - adobe-source-han-sans-cn-fonts
 - ibus
 - yay
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
 - station
 - obconf
 - lxappearance
 - guchar

### Keyboard Shortcuts

|  **Desktops and Windows**   	|                    	|
|-------------------------	|--------------------	|
| Ctrl+Alt+<Left/Right>   	|  Switch to Desktop 	|
|  Shift+Alt+<Left/Right> 	|  Send to Desktop   	|
| Super+D                 	| Toggle Desktop     	|
|  Alt+F4 or Super+Q      	| Close              	|
| Alt+Escape              	| Send to Bottom     	|
| Alt+Tab                 	| Cycle Windows      	|
| Alt+S                	| Maximize     	|
| Super+Tab                	| Expose (skippy-xd)     	|


| **Applications**           	|                    	|
|-------------------------	|--------------------	|
| Super+M                 	| Chromium           	|
| Super+Return            	| Terminal (urxvt)      |
| Super+F                 	| Thunar             	|
| PrintScreen               | Selection Screenshot to Clipboard |


| **Power Management**        	|                    	|
|-------------------------	|--------------------	|
| Super+L                 	| Lock               	|
| Ctrl+Super+Shift+L      	| Shut Down          	|
| Super+Shift+L           	| Suspend                   	|


### Coming soon (?)
 - Elementary OS / Ubuntu / Xubuntu dotfiles
 - i3
 - Windows (HAHAHAHAH jk lol)
 - Do a `:%s/nano/nvim/g`
 - Customize lightdm greeter
 - Fix oblogout
 - Get rid of ugly black borders on window button hover (openbox)
 - Upload wallpaper links to readme

### Credits

  - Polybar inspired by [blackinitial](https://github.com/blackinitial/openbox_dotfiles)
 - GTK Theme: [Fantome by Addy](https://github.com/addy-dclxvi/gtk-theme-collections)
 - Openbox Theme inspired by Addy's [Bonzo](https://github.com/addy-dclxvi/openbox-theme-collections)
 - Icon Theme: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
 - Conky inspired by Addy's [Flea](https://github.com/addy-dclxvi/conky-theme-collections)



#### View other branches
 - [BSPWM](https://github.com/dbqeo/dotfiles/tree/bspwm)
 - [OpenBox](https://github.com/dbqeo/dotfiles/tree/openbox)
 - [OpenBox OSX](https://github.com/dbqeo/dotfiles/tree/openbox-osx)