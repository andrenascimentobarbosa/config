#!/usr/bin/bash

file='/tmp/audio.txt'




devs=('pactl set-default-sink alsa_output.pci-0000_00_1f.3.analog-stereo'
        'pactl set-default-sink alsa_output.usb-Generic_YA_USB_Audio_20210726905926-00.iec958-stereo'
        'pactl set-default-sink bluez_output.74_B7_E6_20_10_27.1')




if [[ -f "$file" ]]; then
    current=$(cat "$file")
else
    current=-1
fi

next=$(( (current + 1) % ${#devs[@]} ))

eval "${devs[$next]}"

echo "$next" > "$file"
