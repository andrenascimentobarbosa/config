<h1>My Set Up</h1>

*Dependencies:*

    sudo apt update
    sudo apt install i3 picom tmux vim pactl git -y

_______________________________________________________

*How to set it up:*
    
git clone https://github.com/andrenascimentobarbosa/config/

    cp ~/config/i3 ~/.config/i3/config
    cp ~/config/picom.conf ~/.config/picom.conf
    cp ~/config/i3status/config-top ~/.config/i3status/config
    ~/config/tmux.conf ~/.tmux.conf
    cp ~/config/vimrc ~/.vimrc
    cp ~/config/bashrc ~/.bashrc
    cp -r ~/config/wallpapers ~/Pictures/

_______________________________________________________

*Details:*

**i3WM:**
Change wallpaper:

    vim ~/.config/i3/config
    :%s/current-wallpaper.png/new-wallpaper.png/g

Adjust center by removing or adding spaces on  ~/.config/i3status/config

**OR JUST USE GNOME**



