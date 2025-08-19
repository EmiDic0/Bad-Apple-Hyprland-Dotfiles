#!/bin/env bash

MAKOCTL="/usr/bin/makoctl"
MAKOCONFIG="$HOME/.config/mako/config"
#MAKOCONFIG="/tmp/config"
COLORS="$HOME/.cache/wal/colors"

counter=0
while IFS= read -r line; do
    var="COLOR$((counter++))"
    declare "$var"="$line"
done < $COLORS
unset counter var
cat << EOF > $MAKOCONFIG

font=Adwaita Mono Regular
layer=overlay
anchor=top-right
width=320
padding=10
margin=10
border-size=0
default-timeout=5000
border-radius=10

background-color=$COLOR0
text-color=$COLOR1

[urgency=low]
border-color=$COLOR2
background-color=$COLOR0
text-color=$COLOR6

[urgency=normal]
border-color=$COLOR1
background-color=$COLOR0
text-color=$COLOR5
default-timeout=7000
ignore-timeout=1

[urgency=high]
font=Adwaita Mono Regular
border-color=$COLOR1
background-color=$COLOR2
text-color=$COLOR6
default-timeout=0
ignore-timeout=1
EOF
$MAKOCTL  reload
