return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        lspconfig.lua_ls.setup({
            capabilities = capabilities,
        })

        lspconfig.html.setup({
            capabilities = capabilities,
        })

        lspconfig.cssls.setup({
            capabilities = capabilities,
        })
    end,
}
