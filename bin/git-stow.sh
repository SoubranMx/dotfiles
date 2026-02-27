#!/bin/bash
# ~/dotfiles/bin/git-stow.sh
# Gestiona gitconfig en ~/.config/git/config

DOTFILES="$HOME/dotfiles"
GITCONFIG="$DOTFILES/git/config/gitconfig"
TARGET="$HOME/.config/git/config"

set -e

case "$1" in
  install|up)
    echo "🔗 Instalando gitconfig..."
    [ -L "$TARGET" ] && rm "$TARGET"
    [ -e "$TARGET" ] && rm "$TARGET"
    [ ! -f "$GITCONFIG" ] && { echo "❌ $GITCONFIG no existe"; exit 1; }
    mkdir -p "$HOME/.config/git"
    ln -sf "$GITCONFIG" "$TARGET"
    echo "✅ $(basename "$TARGET") → $GITCONFIG"
    echo "🎉 $(git config user.name)"
    ;;
  uninstall|down)
    echo "🗑️  Removiendo..."
    [ -L "$TARGET" ] && rm "$TARGET" && echo "✅ Removido"
    [ -d "$HOME/.config/git" ] && rmdir "$HOME/.config/git" 2>/dev/null
    ;;
  status)
    [ -L "$TARGET" ] && echo "✅ $(readlink "$TARGET")" || echo "❌ INACTIVO"
    git config user.name 2>/dev/null || echo "--"
    ;;
  *)
    echo "Uso: $0 {install|uninstall|status|up|down}"
    exit 1
esac
