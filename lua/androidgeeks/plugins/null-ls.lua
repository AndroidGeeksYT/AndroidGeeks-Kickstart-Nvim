return {
  'nvimtools/none-ls.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local null_ls = require 'null-ls'

    local formatting = null_ls.builtins.formatting

    null_ls.setup {
      sources = {
        -- Web
        formatting.prettier, -- js, ts, jsx, tsx, css, html, json, md, etc.

        -- Lua
        formatting.stylua,

        -- Python
        formatting.black,
        -- formatting.isort,

        -- Go
        formatting.gofmt,
        formatting.goimports,

        -- Rust
        -- formatting.rustfmt,

        -- Shell
        formatting.shfmt,

        -- C/C++
        null_ls.builtins.formatting.clang_format,

        -- JSON / YAML
        formatting.prettier.with {
          filetypes = { 'json', 'yaml' },
        },

        -- Markdown
        --formatting.prettier.with {
        --  filetypes = { 'markdown' },
        -- },
      },
      on_attach = function(client, bufnr)
        if client.supports_method 'textDocument/formatting' then
          local group = vim.api.nvim_create_augroup('LspFormatting', { clear = true })
          vim.api.nvim_create_autocmd('BufWritePre', {
            group = group,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format { bufnr = bufnr }
            end,
          })
        end
      end,
    }
  end,
}
