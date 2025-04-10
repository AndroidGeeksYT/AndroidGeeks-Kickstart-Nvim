return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>", {})
        vim.keymap.set("n", "<leader>tf", ":Neotree buffers reveal float<CR>", {})
    end,
}
