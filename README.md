<p align='center'>
<img src="https://img.shields.io/badge/Maintained%3F-YES-cyan?style=for-the-badge">
<img src="https://img.shields.io/github/license/AndroidGeeksYT/AndroidGeeks-Kickstart-Nvim?color=cyan&style=for-the-badge">
<img src="https://img.shields.io/github/stars/AndroidGeeksYT/AndroidGeeks-Kickstart-Nvim?color=cyan&style=for-the-badge">
<img src="https://img.shields.io/github/forks/AndroidGeeksYT/AndroidGeeks-Kickstart-Nvim?color=cyan&style=for-the-badge">
<img src="https://img.shields.io/github/issues/AndroidGeeksYT/AndroidGeeks-Kickstart-Nvim?color=cyan&style=for-the-badge">
</p>

---

## 📚 Features

- 🔍 **Fuzzy finding** (Telescope)
- 🌍 **LSP ready** with Mason & LSPconfig
- 🌟 **Treesitter enhanced** syntax highlighting
- ✨ **Auto-completion** with nvim-cmp
- 🔄 **Formatter and Linter integration**
- 🔗 **Git integration** via gitsigns.nvim
- 🔺 **File tree explorer** (Neo-tree)
- 🪡 **Fully customizable and extendable**

---

## ⚙️ Requirements

- Neovim `0.9+`
- `git`
- `ripgrep`
- `clang`
- `python`
- `nodejs`
- A Nerd Font (e.g., [Hack Nerd Font](https://www.nerdfonts.com/))

---

# 🌟 AndroidGeeks Kickstart Nvim

A modern, blazing-fast Neovim configuration powered by **kickstart.nvim** and fine-tuned for developers who want a ready-to-use, beautiful, and efficient coding environment.

---

## 🚀 Quick Start

```bash
# Backup your current nvim config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this repo
git clone https://github.com/AndroidGeeksYT/AndroidGeeks-Kickstart-Nvim ~/.config/nvim
rm -rf .config/nvim/.git

# Launch Neovim
nvim
```

Plugins and configurations will auto-install on the first launch! 🌟

---

## ⌨️ Dashboard Key Mappings

| Mode | Mapping | Action                |
| :--- | :------ | :-------------------- |
| n    | `ff`    | Find files            |
| n    | `nf`    | New File              |
| n    | `rf`    | Recent Files          |
| n    | `ft`    | Find Text (Live Grep) |
| n    | `m`     | Mason                 |
| n    | `l`     | Lazy                  |
| n    | `q`     | Exit / Quit Neovim    |

---

## ⌨️ Basic Key Mappings

| Mode | Mapping     | Action             |
| :--- | :---------- | :----------------- |
| n    | `<leader>e` | Netrw              |
| n    | `<leader>n` | New Tab            |
| n    | `<leader>q` | Exit / Quit Neovim |
| n    | `<leader>r` | Run Code           |
| n    | `<leader>w` | Save File          |
| n    | `<leader>x` | Close Tab          |
| n    | `<leader>tt`| Neo Tree           |

> Leader is space. Press space on your keyboard!!!

## ⌨️ NVIM-CMP Key Mappings

| Mode | Mapping     | Action             |
| :--- | :---------- | :----------------- |
| n    | `<Tab>`     | Next               |
| n    | `<S-Tab>`   | Previous           |
| n    | `<Enter>`   | Confirm Selection  |
| n    | `<C-Space>` | Complete Mapping   |

## ⌨️ Bufferline / Tabs Key Mappings

| Mode | Mapping     | Action             |
| :--- | :---------- | :----------------- |
| n    | `<Tab>`     | Next               |
| n    | `<S-Tab>`   | Previous           |
| n    | `<leader>x` | Close Tab          |

---

## Donate :

<p>
<img src="https://github.com/AndroidGeeksYT/AndroidGeeks-Kickstart-Nvim/blob/main/img/donate.png">
</p>

---

## 🙏 Credits

- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- And many other amazing open-source developers!
