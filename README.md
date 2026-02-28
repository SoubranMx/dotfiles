# Pasos iniciales para ArchLinux customs

## Instalaciones manuales con el medio de instalacion de Arch
- Instalar archlinux con archinstall
- Desktop Environment: KDE Plasma o GNOME.
- DE Greeter: sddm (ta medio feo) o gdm (el de gnome, mas bonito)
- Audio -> pipewire
- Greeter -> sddm
- Network -> network manager
- Paqueteria extra: firefox, ghostty, kitty, neovim, zsh, git
- Zona horaria: America/Mexico_City

## Primeros cambios
- Cambiar default shell a zsh:
```bash
chsh -s (which zsh)
```
- Logout para efectuar el cambio.
- Instalar oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
- Instalar nvchad (necesita neovim primero), al correr deberia ejecutar lazynvim y deberia configurar por si solo varias cosas de nvim:
```bash
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
```
- Instalar hyprland! (y otras utils de hypr):
```bash
yes | sudo pacman -S hyprland hyprlock hypridle hyprshot hyprsunset hyprpaper
```
- Instalaciones extras:
stow -> Para hacer symlinks
```bash
yay -S stow
```
### Scripts
- Acceder a la configuracion rapida de hyprland:
```bash
hyprland-configure
```

