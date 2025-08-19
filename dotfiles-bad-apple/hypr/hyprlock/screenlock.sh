current=$(hyprctl activeworkspace -j | jq '.id')

mpvpaper -vs -o "no-audio loop panscan=1" --layer overlay eDP-1 /home/emidic/.config/hypr/hyprlock/hyprlockscreen.mp4 & hyprlock; pkill mpvpaper