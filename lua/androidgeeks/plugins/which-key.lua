return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  opts = {
    -- delay between pressing a key and opening which-key (milliseconds)
    -- this setting is independent of vim.opt.timeoutlen
    delay = 0,
    preset = 'modern',
    colors = true,

    icons = {
      rules = false,
      breadcrumb = ' ', -- symbol used in the command line area that shows your active key combo
      separator = '󱦰  ', -- symbol used between a key and it's label
      group = '󰹍 ', -- symbol prepended to a group
    },

    plugins = {
      spelling = {
        enabled = false,
      },
    },

    win = {
      height = {
        max = math.huge,
      },
    },

    -- Document existing key chains
    spec = {},
  },
}
