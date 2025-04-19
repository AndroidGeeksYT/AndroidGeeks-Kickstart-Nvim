return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = true,
  config = function()
    require('nvim-autopairs').setup {}
  end,
}
