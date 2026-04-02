##################################################
# my shortcuts
##################################################

# toogle keyboard layout
bindsym Mod1+n exec /home/andre/scripts/keyboard_layout_toggle.sh

# razer
bindsym Mod1+o exec polychromatic-cli -o static -c "#000000"
bindsym Mod1+k exec polychromatic-cli -o static -c "#0000FF"

# monitor
bindsym Ctrl+Mod1+o exec xrandr --output DP-1 --off
bindsym Ctrl+Mod1+m exec xrandr --output DP-1 --auto && xrandr --output DP-1 --left-of HDMI-2

# audio
bindsym Ctrl+backslash exec ~/scripts/switchaudio.sh
bindsym Mod1+backslash exec amixer set Master toggle
bindsym Mod1+bracketleft exec amixer set Master 5%-
bindsym Mod1+bracketright exec amixer set Master 5%+

# apps
bindsym Ctrl+Mod1+b exec firefox
bindsym Ctrl+Mod1+c exec google-chrome
bindsym Ctrl+Mod1+n exec discord



