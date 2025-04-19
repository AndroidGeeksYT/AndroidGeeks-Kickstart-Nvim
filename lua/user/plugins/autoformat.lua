return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_fallback = true }
      end,
      mode = { 'n', 'v' }, -- normal and visual mode
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disable_filetypes = {
        c = true,
        cpp = true,
      }
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return nil
      end
      return {
        timeout_ms = 2000, -- Give formatters more time
        lsp_fallback = true, -- fallback to LSP if no formatter
      }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      markdown = { 'mdformat' }, -- use mdformat for markdown
      -- You can add more filetypes here if needed
    },
  },
}
