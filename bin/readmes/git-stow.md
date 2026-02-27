```markdown
# dotfiles README.md

## 📦 Estructura

```
dotfiles/
├── git/
│   └── config/
│       └── gitconfig    ← ~/.config/git/config
├── README.md
└── bin/
    └── git-stow.sh      ← Script gestor
```

## 🚀 Instalación

### 1. Instalar dependencias
```bash
sudo pacman -S stow
```

### 2. Clonar/Mover dotfiles
```bash
git clone <tu-repo> ~/dotfiles
cd ~/dotfiles
```

### 3. Instalar script gestor
```bash
chmod +x bin/git-stow.sh
echo 'alias git-stow="$HOME/dotfiles/bin/git-stow.sh"' >> ~/.zshrc
source ~/.zshrc
```

### 4. Configurar Git
```bash
git-stow install
```

## 🎮 Uso

| Comando | Acción |
|---------|--------|
| `git-stow install` | 🔗 **Instala** `~/.config/git/config` |
| `git-stow status` | ✅ **Verifica** estado |
| `git-stow uninstall` | 🗑️ **Remueve** links |

### Verificación
```bash
git-stow status
git config user.name    # Debe mostrar tu nombre
git config pull.rebase  # true
```

## 🔧 Estructura resultante

```
~/.config/git/
└── config → /home/uriel/dotfiles/git/config/gitconfig  ✅
```

## 🛠️ Mantenimiento

### Actualizar config
```bash
# Edita ~/dotfiles/git/config/gitconfig
nvim ~/dotfiles/git/config/gitconfig

# Cambios se reflejan automáticamente (symlink)
git config user.name  # Actualizado
```

### Reinstalar todo
```bash
git-stow uninstall
git pull              # Actualiza dotfiles
git-stow install
```

## ❓ Troubleshooting

**`No existe el fichero`**
```bash
rm -rf ~/.config/git
git-stow install
```

**Git no lee config**
```bash
ls -la ~/.config/git/config  # Debe ser symlink
git config --list --show-origin
```

## 📝 Configuración Git incluida

```ini
[user]
  name = Uriel Soubran
  email = uriel_bee15@hotmail.com

[pull]
  rebase = true

[url "git@github.com:"]
  insteadOf = https://github.com/

[color]
  ui = auto
  status = auto
  branch = auto

[init]
  defaultBranch = main

[push]
  default = current
  autoSetupRemote = true

[core]
  editor = nvim
  autocrlf = input
  pager = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    navigate = true  # use n and N to move between diff sections
    dark = true      # or light = true, or omit for auto-detection

[merge]
    conflictStyle = zdiff3```

## 🎉 ¡Listo!

```bash
git-stow status
```

**✅ Tu `gitconfig` está activo y gestionado.**

---
*Última actualización: 27/02/2026*
