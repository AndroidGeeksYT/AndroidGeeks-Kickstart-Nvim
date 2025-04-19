return {
  'goolord/alpha-nvim',
  enabled = true,
  event = 'VimEnter',
  lazy = false,
  opts = function()
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = {
      '   █████╗ ███╗   ██╗██████╗ ██████╗  ██████╗ ██╗██████╗',
      '  ██╔══██╗████╗  ██║██╔══██╗██╔══██╗██╔═══██╗██║██╔══██╗',
      '  ███████║██╔██╗ ██║██║  ██║██████╔╝██║   ██║██║██║  ██║',
      '  ██╔══██║██║╚██╗██║██║  ██║██╔══██╗██║   ██║██║██║  ██║',
      '  ██║  ██║██║ ╚████║██████╔╝██║  ██║╚██████╔╝██║██████╔╝',
      '  ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝╚═════╝',

      '         ██████╗ ███████╗███████╗██╗  ██╗███████╗',
      '        ██╔════╝ ██╔════╝██╔════╝██║ ██╔╝██╔════╝',
      '        ██║  ███╗█████╗  █████╗  █████╔╝ ███████╗',
      '        ██║   ██║██╔══╝  ██╔══╝  ██╔═██╗ ╚════██║',
      '        ╚██████╔╝███████╗███████╗██║  ██╗███████║',
      '         ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝',
    }

    -- CENTER THE HEADER
    dashboard.section.header.opts = {
      position = 'center',
      hl = 'AlphaHeader',
      vim.api.nvim_set_hl(0, 'AlphaHeader', { fg = '#00FFFF', bold = true })
    }

    dashboard.section.buttons.val = {
      dashboard.button('ff', ' ' .. ' Find file', ':Telescope find_files <CR>'),
      dashboard.button('nf', ' ' .. ' New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('rf', ' ' .. ' Recent files', ':Telescope oldfiles <CR>'),
      dashboard.button('ft', ' ' .. ' Find text', ':Telescope live_grep <CR>'),
      dashboard.button('m', ' ' .. ' Mason', ':Mason <CR>'),
      dashboard.button('l', '󰒲 ' .. ' Lazy', ':Lazy<CR>'),
      dashboard.button('q', ' ' .. ' Quit', ':qa<CR>'),
    }

    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = 'AlphaButtons'
      button.opts.hl_shortcut = 'AlphaShortcut'
    end

    dashboard.section.buttons.opts = {
      position = 'center',
      hl = 'AlphaButtons',
    }

    dashboard.section.footer.opts = {
      position = 'center',
      hl = 'AlphaFooter',
    }

    dashboard.opts.layout = {
      { type = 'padding', val = 8 },
      dashboard.section.header,
      { type = 'padding', val = 2 },
      dashboard.section.buttons,
      { type = 'padding', val = 1 },
      dashboard.section.footer,
    }

    return dashboard
  end,
  config = function(_, dashboard)
    if vim.o.filetype == 'lazy' then
      vim.cmd.close()
      vim.api.nvim_create_autocmd('User', {
        pattern = 'AlphaReady',
        callback = function()
          require('lazy').show()
        end,
      })
    end

    require('alpha').setup(dashboard.opts)

    vim.api.nvim_create_autocmd('User', {
      pattern = 'LazyVimStarted',
      callback = function()
        local stats = require('lazy').stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = '⚡ Neovim loaded ' .. stats.count .. ' plugins in ' .. ms .. 'ms'
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
