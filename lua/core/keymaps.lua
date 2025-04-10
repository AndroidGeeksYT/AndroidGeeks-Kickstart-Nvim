-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- save file
vim.keymap.set("n", "<leader>s", "<cmd> w <CR>", opts)

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", opts) -- close buffer
vim.keymap.set("n", "<leader>n", "<cmd> enew <CR>", opts) -- new buffer
