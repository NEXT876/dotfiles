# dotfiles

These are the dotfiles for the Linux system I use daily, currently Nobara.
I am currently not using Arch, so I'm not 100% sure if wofi/hypr/waybar are up to date;
the rest should be up to date.

## Installation

1. Install `stow`, e.g. with dnf:
```
sudo dnf install stow
```

2. Clone this repo:
```
git clone https://github.com/NEXT876/dotfiles/
cd dotfiles
```

3. Run the install script (it only creates symlinks with stow, it installs no packages):
```
./install.sh all            # everything
./install.sh base           # bashrc kitty starship fastfetch (no hypr/waybar/wofi)
./install.sh kitty starship # single configs
```
If a file already exists in your home directory, stow aborts and lists the conflicts; nothing is overwritten.
You can still use stow directly, e.g. `stow kitty`.

## Required programs

- bashrc: optional ble.sh, zoxide, starship (zoxide/starship are only loaded if installed)
- hypr: Hyprland, hypridle, hyprlock, hyprpaper, swaync, blueman
- waybar: wireplumber (`wpctl`), pavucontrol, brightnessctl, network-manager-applet (`nm-connection-editor`), libnotify (`notify-send`)

The hyprlock fonts in `hypr/.config/hypr/hyprlock/Fonts/` have to be copied to `~/.local/share/fonts` (then run `fc-cache -f`).
