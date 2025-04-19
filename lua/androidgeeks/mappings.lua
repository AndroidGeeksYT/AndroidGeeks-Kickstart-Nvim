-- Map Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Explorer
vim.keymap.set('n', '<leader>e', '<cmd>Ex<CR>')
-- Save file
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>')
-- Quit / Exit Neovim
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>')
-- Neo Tree
vim.keymap.set('n', '<leader>t', '<cmd>Neotree toggle<CR>')
-- Bufferline / Tabs
vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>')
vim.keymap.set('n', '<S-Tab>', '<cmd>bprevious<CR>')
vim.keymap.set('n', '<leader>x', '<cmd>bdelete!<CR>') -- close buffer
vim.keymap.set('n', '<leader>n', '<cmd>enew<CR>') -- new buffer
