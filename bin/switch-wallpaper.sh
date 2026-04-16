#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Folder with wallpapers
WALLPAPER_DIR="$SCRIPT_DIR/../wallpapers"

# Array of all wallpapers in the folder
WALLPAPERS=("$WALLPAPER_DIR"/*)

# Check if wallpapers exist
if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "Wallpaper folder not found: $WALLPAPER_DIR"
    exit 1
fi


# Pick a random wallpaper
RANDOM_WALLPAPER="${WALLPAPERS[RANDOM % ${#WALLPAPERS[@]}]}"

# Set it using swww
if command -v awww >/dev/null 2>&1; then
    swww img "$RANDOM_WALLPAPER" --transition-type fade --transition-fps 60
elif command -v feh >/dev/null 2>&1; then
    feh --bg-scale "$RANDOM_WALLPAPER"
else
    echo "No supported wallpaper tool found (awww or feh)"
    exit 1
fi
