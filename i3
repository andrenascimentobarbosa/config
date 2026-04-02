##################################################
# my shortcuts
##################################################

# monitor
bindsym Ctrl+Mod1+o exec xrandr --output DP-1 --off
bindsym Ctrl+Mod1+p exec xrandr --output DP-1 --auto && xrandr --output DP-1 --left-of HDMI-2

# audio
bindsym Ctrl+backslash exec ~/scripts/switchaudio.sh
bindsym Ctrl+bracketleft exec amixer set Master 5%-
bindsym Ctrl+bracketright exec amixer set Master 5%+

# apps
bindsym Ctrl+Mod1+b exec /usr/bin/firefox
bindsym Ctrl+Mod1+c exec /usr/bin/google-chrome

bindsym $mod+n exec /home/andre/scripts/keyboard_layout_toggle.sh



