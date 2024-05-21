return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function()
    -- Load the colorscheme here.
    -- available colorscheme catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
    -- vim.cmd.colorscheme 'catppuccin-latte'
    -- vim.cmd.colorscheme 'catppuccin-frappe'
    -- vim.cmd.colorscheme 'catppuccin-macchiato'
    vim.cmd.colorscheme 'catppuccin-mocha'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
