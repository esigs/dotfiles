#!/bin/sh
SESSION=$(printf "raw\nbd-admin\nbd-user\npersonal" | rofi -dmenu -p "Qute session:")
[ -z "$SESSION" ] && exit

BASEDIR="$HOME/.config/qutebrowser/sessions/$SESSION"
mkdir -p "$BASEDIR"
mkdir -p "$BASEDIR/data/"

ln -s "~/.config/qutebrowser/userscripts/"

exec qutebrowser \
    --basedir "$BASEDIR" \
    --config-py "$HOME/.config/qutebrowser/config.py" \
    --set window.title_format "{perc}$SESSION{title_sep}{current_title}" "$URL"
#exec qutebrowser --basedir "$BASEDIR"
