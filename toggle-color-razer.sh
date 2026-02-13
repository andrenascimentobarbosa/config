#!/usr/bin/bash

STATE="/tmp/razer-status-color.txt"

MODS=(
    'polychromatic-cli -d keyboard -o static -c "#0000FF,#0000FF" && polychromatic-cli -d mouse -o static -c "#0000FF,#0000FF"'
    'polychromatic-cli -d keyboard -o static -c "#FF0000,#FF0000" && polychromatic-cli -d mouse -o static -c "#FF0000,#FF0000"'
    'polychromatic-cli -d keyboard -o breath -p single -c "#0000FF,#0000FF" && polychromatic-cli -d mouse -o breath -p single -c "#0000FF,#0000FF"'
    'polychromatic-cli -d keyboard -o breath -p single -c "#FF0000,#FF0000" && polychromatic-cli -d mouse -o breath -p single -c "#FF0000,#FF0000"'
    'polychromatic-cli -d keyboard -o breath -p dual -c "#0000FF,#FF0000" && polychromatic-cli -d mouse -o breath -p dual -c "#0000FF,#FF0000"'
    'polychromatic-cli -d keyboard -o breath -p dual -c "#FF0000,#0000FF" && polychromatic-cli -d mouse -o breath -p dual -c #0000FF,#FF0000'
    'polychromatic-cli -d keyboard -o starlight -p dual:3 -c "#0000FF,FF0000" &&  polychromatic-cli -d mouse -z logo -o breath -p dual -c "#FF0000,#0000FF"
&&  polychromatic-cli -d mouse -z scroll -o breath -p dual -c "#0000FF,#FF0000" &&  polychromatic-cli -d mouse -z right -o breath -p dual -c "#FF0000,#0000FF" && polychromatic-cli -d mouse -z left -o breath -p dual -c "#0000FF,#FF0000"'
    'polychromatic-cli -d keyboard -o wave -p 1 && polychromatic-cli -d mouse -o wave -p 1'
    'polychromatic-cli -d keyboard -o spectrum && polychromatic-cli -d mouse -o spectrum'
)

if [[ -f "$STATE" ]]; then
    current=$(cat "$STATE")
else
    current=-1
fi

next=$(( (current + 1) % ${#MODS[@]} ))

eval "${MODS[$next]}"

echo "$next" > "$STATE"

