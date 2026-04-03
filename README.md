# My Linux Dotfiles

A backup of my **Hyprland + Waybar + scripts + wallpapers** setup for Arch Linux / Wayland.  

This includes:

- Hyprland configuration (`hypr/`)  
- Organized config files for monitors, windows, input, binds, etc.  
- Waybar configuration and scripts (`waybar/`)  
- Scripts to change wallpapers and set keyboard layouts (`bin/`)  
- Wallpapers (`wallpapers/`)  
- Optional Rofi configs (`rofi/`)  

---

## 🖥 Requirements

To use this setup, you should have the following programs installed:

```bash
# Essential
git           # to clone this repository
hyprland      # Wayland compositor
waybar        # status bar
swww          # wallpaper setter
feh           # optional fallback wallpaper setter
bash          # for scripts
fastfetch     # for larping XD
yazi          # file explorer

# Optional / scripts dependencies
cava          # audio visualizer for Waybar
xwayland      # if you need X11 support for some apps
fish          # if you use Fish shell
