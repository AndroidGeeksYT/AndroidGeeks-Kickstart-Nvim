-- Map Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", "<leader>e", "<cmd>Ex<CR>", { desc = "File Explorer", noremap = true, silent = true })

map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save File", noremap = true, silent = true })
-- Quit / Exit Neovim
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Exit", noremap = true, silent = true })
-- Bufferline / Tabs
map("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next Tab", noremap = true, silent = true })
map("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Previous Tab", noremap = true, silent = true })
map("n", "<leader>x", "<cmd>bdelete!<CR>", { desc = "Close Tab", noremap = true, silent = true })
map("n", "<leader>n", "<cmd>enew<CR>", { desc = "New Tab", noremap = true, silent = true })
map("n", "<leader>d", "<cmd>Alpha<CR>", { desc = "Dashboard", noremap = true, silent = true })

-- Run code
map("n", "<leader>r", function()
	require("androidgeeks.term").run_current_file()
end, { desc = "Run Code", noremap = true, silent = true })
