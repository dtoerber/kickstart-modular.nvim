return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          {
            desc = ' Recent Files',
            group = 'Number',
            action = 'Telescope oldfiles',
            key = 'r',
          },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        },
      },
    }
  end,

  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
