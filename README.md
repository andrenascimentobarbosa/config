*** Set up ***
sudo apt update
sudo apt install i3 picom tmux vim pactl git -y

git clone https://github.com/andrenascimentobarbosa/config/

cp ~/config/i3 ~/.config/i3/config
cp ~/config/picom.conf ~/.config/picom.conf
cp ~/config/i3status/config-top ~/.config/i3status/config
~/config/tmux.conf ~/.tmux.conf
cp ~/config/vimrc ~/.vimrc
cp ~/config/bashrc ~/.bashrc
cp -r ~/config/wallpapers ~/Pictures/

Change wallpaper:
vim ~/.config/i3/config
:%s/<current.png>/<new.png>/g

Adjust center removing or adding spaces on  ~/.config/i3status/config



