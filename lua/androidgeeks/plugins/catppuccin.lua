return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {

      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = 'catppuccin-mocha',
        },
      },
    }

    local mocha = require('catppuccin.palettes').get_palette 'mocha'

    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}
