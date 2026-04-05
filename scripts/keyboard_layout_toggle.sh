#!/usr/bin/bash
STATE_FILE="/tmp/current_kb_layout"

[ ! -f "$STATE_FILE" ] && printf "0" > "$STATE_FILE"

cur=$(tr -d ' \t\n\r' < "$STATE_FILE" 2>/dev/null || echo "0")

case "$cur" in
  0) next=1 ;;
  1) next=0 ;;
  *) next=0 ;;
esac

[ "$next" -eq 0 ] && setxkbmap br || setxkbmap us

printf "%s" "$next" > "$STATE_FILE"
