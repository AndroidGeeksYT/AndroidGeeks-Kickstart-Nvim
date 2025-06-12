return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
    'saadparwaiz1/cmp_luasnip',

    -- Completion sources
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',

    -- Icons
    'onsails/lspkind.nvim',

    -- Autopairs integration
    'windwp/nvim-autopairs',
  },

  config = function()
    local cmp = require 'cmp'
    local luasnip = require 'luasnip'
    local lspkind = require 'lspkind'
    local cmp_autopairs = require 'nvim-autopairs.completion.cmp'

    require('luasnip.loaders.from_vscode').lazy_load()

    require('nvim-autopairs').setup {}
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

    cmp.setup {
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },

      mapping = cmp.mapping.preset.insert {
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { 'i', 's' }),

        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { 'i', 's' }),

        ['<CR>'] = cmp.mapping.confirm { select = true },
        ['<C-Space>'] = cmp.mapping.complete(),
      },

      sources = cmp.config.sources {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'nvim_lua' },
      },

      formatting = {
        format = lspkind.cmp_format {
          mode = 'symbol_text', -- show symbol + text
          maxwidth = 50,
          ellipsis_char = '...',
        },
      },

      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
    }
  end,
}
