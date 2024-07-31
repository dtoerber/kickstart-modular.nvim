return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      mode = 'tabs',
      separator_style = 'slant',
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'File Explorer',
          text_align = 'center',
        },
      },
    },
  },
}
