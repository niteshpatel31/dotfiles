# Dotfiles

A modern and minimal Linux desktop and development environment configuration designed for productivity, performance, and keyboard-driven workflows.

This repository contains carefully organized configuration files for terminal tools, desktop customization, and development utilities with a focus on maintainability and consistency.

---

## Table of Contents

- [Overview](#overview)
- [Components](#components)
- [Repository Structure](#repository-structure)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Neovim Setup](#neovim-setup)
- [Desktop Configuration](#desktop-configuration)
- [Customization](#customization)
- [Troubleshooting](#troubleshooting)
- [Recommended Utilities](#recommended-utilities)
- [Security Notes](#security-notes)
- [Future Improvements](#future-improvements)
- [License](#license)

---

## Overview

These dotfiles provide a complete Linux development environment built around:

- A tiling window manager workflow
- Keyboard-centric productivity
- A modern Neovim development setup
- Lightweight desktop utilities
- Consistent terminal and UI theming

The configuration is primarily optimized for Arch Linux and Arch-based distributions but can easily be adapted for Ubuntu, Debian, Fedora, and similar systems.

---

## Components

| Component | Description |
|---|---|
| Neovim | Main editor and IDE environment |
| i3 | Tiling window manager |
| Polybar | Status and workspace bar |
| Kitty | GPU accelerated terminal emulator |
| Rofi | Application launcher and menu system |
| Dunst | Notification daemon |

---

## Repository Structure

```text
.
├── dunst/
│   ├── dunst.conf
│   └── dunstrc
├── i3/
│   └── config
├── kitty/
│   ├── kitty.conf
│   ├── hyde.conf
│   └── theme.conf
├── nvim/
│   ├── init.lua
│   ├── lua/
│   ├── plugin/
│   ├── docs/
│   ├── my_snippets/
│   └── ...
├── polybar/
│   └── config.ini
└── rofi/
    ├── config.rasi
    └── theme.rasi
```

---

## Features

### Desktop Environment

- Lightweight i3 tiling workflow
- Custom Polybar integration
- Rofi application launcher configuration
- Dunst notification styling
- Kitty terminal theming
- Keyboard-first navigation system

### Neovim Configuration

- Lua-based modular architecture
- Lazy.nvim plugin management
- Built-in LSP support
- Treesitter syntax highlighting
- Snippet and autocompletion support
- Fuzzy finder integration
- Git tooling support
- Competitive programming workflow enhancements
- Markdown and LaTeX support
- Terminal-first development experience

---

## Requirements

### Core Dependencies

Install the following packages before configuring the environment.

### Arch Linux

```bash
sudo pacman -S \
  i3-wm \
  polybar \
  rofi \
  dunst \
  kitty \
  neovim \
  git \
  unzip \
  ripgrep \
  fd \
  fzf \
  wget \
  curl \
  xclip \
  feh \
  playerctl \
  picom
```

### Ubuntu / Debian

```bash
sudo apt install \
  i3 \
  polybar \
  rofi \
  dunst \
  kitty \
  neovim \
  git \
  unzip \
  ripgrep \
  fd-find \
  fzf \
  wget \
  curl \
  xclip \
  feh \
  playerctl \
  picom
```

---

## Fonts

Recommended fonts:

- JetBrains Mono Nerd Font
- FiraCode Nerd Font
- Symbols Nerd Font

Official source:

- https://www.nerdfonts.com/

Example installation on Arch Linux:

```bash
sudo pacman -S ttf-jetbrains-mono-nerd
```

---

## Installation

### Clone the Repository

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### Backup Existing Configuration

```bash
mkdir -p ~/.config-backup

mv ~/.config/i3 ~/.config-backup/ 2>/dev/null
mv ~/.config/kitty ~/.config-backup/ 2>/dev/null
mv ~/.config/nvim ~/.config-backup/ 2>/dev/null
mv ~/.config/polybar ~/.config-backup/ 2>/dev/null
mv ~/.config/rofi ~/.config-backup/ 2>/dev/null
mv ~/.config/dunst ~/.config-backup/ 2>/dev/null
```

### Create Symbolic Links

```bash
mkdir -p ~/.config

ln -sf ~/dotfiles/i3 ~/.config/i3
ln -sf ~/dotfiles/kitty ~/.config/kitty
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/polybar ~/.config/polybar
ln -sf ~/dotfiles/rofi ~/.config/rofi
ln -sf ~/dotfiles/dunst ~/.config/dunst
```

Using symbolic links allows all configuration changes to remain synchronized with the repository.

---

## Neovim Setup

### Additional Dependencies

```bash
sudo pacman -S \
  nodejs \
  npm \
  python \
  python-pip \
  lua \
  luarocks \
  clang \
  gcc
```

### Initial Launch

```bash
nvim
```

Plugins will automatically install during the first launch through Lazy.nvim.

---

## Language Server Support

Recommended language servers:

| Language | Server |
|---|---|
| C / C++ | clangd |
| Python | pyright |
| JavaScript / TypeScript | tsserver |
| Lua | lua-language-server |
| Bash | bash-language-server |

Install language servers using Mason or the system package manager.

---

## Desktop Configuration

### Reload i3

```text
Mod + Shift + r
```

### Exit i3

```text
Mod + Shift + e
```

Default modifier key:

```text
Super / Windows Key
```

### Launch Polybar

```bash
polybar main
```

### Launch Rofi

```bash
rofi -show drun
```

### Restart Dunst

```bash
killall dunst && dunst &
```

### Launch Kitty

```bash
kitty
```

---

## Updating the Configuration

```bash
cd ~/dotfiles
git pull
```

Because symbolic links are used, updates are immediately reflected in the active configuration.

---

## Recommended Utilities

Optional tools that integrate well with this environment:

```bash
sudo pacman -S \
  bat \
  eza \
  btop \
  zoxide \
  tmux \
  lazygit
```

---

## Customization

You can customize:

- Themes and colors
- Window manager keybindings
- Polybar modules
- Notification appearance
- Terminal configuration
- Neovim plugins and mappings
- Fonts and icon sets

Primary configuration files:

| Component | Configuration File |
|---|---|
| i3 | `i3/config` |
| Polybar | `polybar/config.ini` |
| Kitty | `kitty/kitty.conf` |
| Rofi | `rofi/config.rasi` |
| Dunst | `dunst/dunstrc` |
| Neovim | `nvim/init.lua` |

---

## Troubleshooting

### Neovim Plugins Not Installing

Inside Neovim:

```vim
:Lazy sync
```

### Missing Icons

Ensure Nerd Fonts are installed correctly and restart the terminal.

### Polybar Not Appearing

Check active monitor names:

```bash
xrandr
```

Update monitor settings inside:

```text
polybar/config.ini
```

### Rofi Theme Issues

```bash
rofi-theme-selector
```

---

## Screenshots

Screenshots can be added later.

Example:

```markdown
![desktop](./assets/desktop.png)
```

---

## Security Notes

Before publishing the repository:

- Remove API keys
- Remove authentication tokens
- Remove SSH private keys
- Remove personal file paths
- Review shell history references

Always verify repository changes before pushing:

```bash
git status
```

---

## Future Improvements

Planned additions:

- Wayland support
- Hyprland configuration
- Automated installation scripts
- Shell configuration integration
- Improved theme management
- Tmux workflow integration
- Screenshot automation

---

## Quick Setup

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles

mkdir -p ~/.config

ln -sf ~/dotfiles/i3 ~/.config/i3
ln -sf ~/dotfiles/kitty ~/.config/kitty
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/polybar ~/.config/polybar
ln -sf ~/dotfiles/rofi ~/.config/rofi
ln -sf ~/dotfiles/dunst ~/.config/dunst

nvim
```

---

