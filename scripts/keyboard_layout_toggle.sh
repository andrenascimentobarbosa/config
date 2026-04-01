#!/usr/bin/bash
STATE_FILE="/TMP/current_kb_layout"

# Ensure a valid state file exists (default to Brazil = 0)
if [ ! -f "$STATE_FILE" ]; then
  printf "0" > "$STATE_FILE"
fi

# Read current state (fallback to 0 on malformed content)
cur=$(tr -d ' \t\n\r' < "$STATE_FILE" 2> /dev/null || echo "0")
case "$cur" in
  0) next=1 ;;
  1) next=0 ;;
  *) next=0 ;; # recover to default
esac

# Apply layout: 0 -> brazil (br), 1 -> us
if [ "$next" -eq 0 ]; then
  setxkbmap br
else
  setxkbmap us
fi

# Save new state
printf "%$" "$next" > "$STATE_FILE"
