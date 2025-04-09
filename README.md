<div align="center">
  <img src="https://img.shields.io/github/last-commit/AndroidGeeksYT/AndroidGeeksCodeEditor?style=for-the-badge">
  <img src="https://img.shields.io/badge/Maintained%3F-Yes-green?style=for-the-badge">
  <img src="https://img.shields.io/github/license/AndroidGeeksYT/AndroidGeeksCodeEditor?style=for-the-badge">
  <img src="https://img.shields.io/github/stars/AndroidGeeksYT/AndroidGeeksCodeEditor?style=for-the-badge">
  <img src="https://img.shields.io/github/forks/AndroidGeeksYT/AndroidGeeksCodeEditor?color=teal&style=for-the-badge">
  <img src="https://img.shields.io/github/issues/AndroidGeeksYT/AndroidGeeksCodeEditor?color=violet&style=for-the-badge">
  <img src="https:://img.shields.io/badge/neovim/neovim?style=for-the-badge">
  <a href=https://www.youtube.com/@androidgeeksofficial><img src="https://img.shields.io/badge/YouTube-red?style=for-the-badge&logo=youtube&logoColor=white">
  <a href=https://t.me/AndroidGeeksFileSharing><img src="https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white">
</div>

# Getting Started

Android Geeks Code Editor was build by me from scratch and from source. The main goal is to have a simple code editor that works like it should. Not overflowing it with features that we don't need on our day to day development work flow.

# Installation

First step :
```
pkg update && pkg upgrade -y
```

Second step :
```
pkg i neovim git wget ripgrep nodejs clang python lua-language-server stylua -y
```

Installing Android Geeks Code Editor :
```
git clone https://github.com/AndroidGeeksYT/AndroidGeeksCodeEditor.git ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```

# Dashboard Keymaps

- ff - to find files
- nf - to create new file
- rf - to search/open recent files
- ft - to find text (live grep)
- m - to open mason
- l - to open lazy
- q - to quit/exit nvim

# Keymaps
The leader keymap is space. so press space on your keyboard followed by keymaps.

- leader ff to find files
- leader lg to live grep
- leader of to old files
- leader nt to open/close neotree
- leader ntbf to open neotree buffer float
- leader f to format code 
