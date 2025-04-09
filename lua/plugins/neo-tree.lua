return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "html", "css" },
			highlight = { enable = true },
			indent = { enable = true },
		})

		vim.keymap.set("n", "<leader>nt", ":Neotree toggle<CR>", {})
		vim.keymap.set("n", "<leader>ntbf", ":Neotree buffers reveal float<CR>", {})
	end,
}
