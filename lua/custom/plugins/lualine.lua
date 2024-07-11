return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local lualine = require 'lualine'
    lualine.setup {
      options = {
        theme = 'dracula',
        disabled_filetypes = { 'neo-tree' },
      },
    }
  end,
}
