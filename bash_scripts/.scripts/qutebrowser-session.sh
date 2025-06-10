#!/bin/sh
SESSION=$(printf "work\npersonal\nresearch" | dmenu -p "Qute session:")
[ -z "$SESSION" ] && exit

BASEDIR="$HOME/.config/qutebrowser/sessions/$SESSION"
mkdir -p "$BASEDIR"

exec qutebrowser --basedir "$BASEDIR"
