# Ubuntu config

Here are the important changes I made to ubuntu.

## Terminal related (and installs)
To import my treminal settings download the usable-theme-profile.dconf from this repo and do  
``` dconf load /org/gnome/terminal/legacy/profiles:/:1430663d-083b-4737-a7f5-8378cc8226d1/ < path/to/usable-theme-profile.dconf``` 

Copy the bashrc file from this repo into ```~.bashrc``` and do
``` source .bashrc ```

#### Install drivers for nvidia (optional)
```
linux-modules-nvidia-440-generic-hwe-20.04
nvidia-driver-440
```

#### Store git details with
```git config --global credential.helper store```

#### Install other usefull tools
Like nodejs, npm, python3-venv etc
```
sudo apt install apt-transport-https build-essential cargo curl dconf-editor git gnome-shell-extensions gnome-tweak-tool libgtk-3-dev make neofetch nodejs npm python3-venv rustc steam
```

#### Check manually installed packages
```
comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)

```

#### Install gnome-tweaks and gnome shell extensions (if it already has not done it)
```
sudo apt-get update
sudo apt upgrade
sudo add-apt-repository universe
sudo apt install gnome-tweak-tool 
apt search gnome-shell-extension | grep ^gnome | cut -d / -f1
```

#### Get chromium and rambox
```
sudo apt install -y chromium-browser rambox
```

#### Sublime setup
On a fresh install of sublime (which you will have if you copied the previous step), install package control, and then set the following:
- Terminus (Keybind alt+\` to toggle terminal (unbind it from 'switch windows of application' in ubuntu settings))(add ```{"keys": ["alt+`"], "command": "toggle_terminus_panel"}``` to sublime key bindings)
- Git 
- Git gutter
- SideBarEnhancements
- Icon Theme: A File Icon
- Theme : Adaptive (available by default)
- Color scheme : monokai (available by default)

#### Jupyter setup
After a fresh install of jupyter add this
###### Themes
- ```pip3 install jupyterthemes && pip3 install --upgrade jupyterthemes ```.
- Upgrade the current installed notebook with ``` pip3 install --upgrade notebook ```. 
- To apply the monokai theme refer [this](https://medium.com/@rbmsingh/making-jupyter-dark-mode-great-5adaedd814db), and run this ``` jt -t monokai```.
- To get oceans16 theme, do ``` jt -t oceans16 ```
###### Extensions
- ```sudo pip3 install jupyter_contrib_nbextensions && jupyter contrib nbextension install ```
- Enable ..?

#### Vim setup
To install the full version of vim, follow [this](https://www.simplified.guide/ubuntu/install-vim), or the run this command:
```
sudo apt remove --assume-yes vim-tiny && sudo apt update && sudo apt install --assume-yes vim
```
Get vim-plug with this:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Set the repeated click rate to high for convinience. Run this to remap caps-lock to escape:
```
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"
```
Copy ```vimrc``` into ```~/.vimrc``` and look at packages in that


## Dock
In the installed dconf editor search for dash-to-dock. Changes made here affect the dock directly. The changes I made are:
- Set extend-height to false
- Set the dock to bottom


## Tweaks
To make adding extensions easier, add [this](https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/) to firefox and open the following liks with firefox. In the gnome tweaks tool, install the following extensions
- [hide-top-bar](https://extensions.gnome.org/extension/545/hide-top-bar/)
- [Unite](https://extensions.gnome.org/extension/1287/unite/)
- Anything else added in the future

#### Hide gnome-terminal's header bar
```gsettings set org.gnome.Terminal.Legacy.Settings headerbar false```

#### Hide-top-bar
Allways hide and show panel when mouse approaches. Disable all options under 'IntelliHide'

#### Unite (?? not fully sure) (!! Dont use !!)
Disable everything / set everything to 'never'. Set only 'Hide window titlebar' to 'Always' and set 'Auto focus new windows' to true

## Pop shell (WindowManager)
Pretty fun, shows up in tweaks when configured correctly.

#### Install
To get pop-shell:
```
sudo npm install -g typescript
git clone https://github.com/pop-os/shell.git
cd shell
./rebuild.sh
```

To get shortcuts(optional):
```
git clone https://github.com/pop-os/shell-shortcuts
cd shell-shortcuts
make
sudo make install
```

Add this to remove super+q default gnome bind ```gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false```

#### Remove
To remove pop-shell
```
rm -r ~/.local/share/gnome-shell/extensions/pop-shell@system76.com
```
To remove shortcuts:
```
sudo rm /usr/local/bin/pop-shell-shortcuts
```


## Misc
- Disable the 'Ctrl + Space' shortcut as it hinders games
- Icon theme is set to the default yaru


## Screenshots

<img src="screenshots/screenshot1.png" height="256">
<img src="screenshots/screenshot2.png" height="256">
