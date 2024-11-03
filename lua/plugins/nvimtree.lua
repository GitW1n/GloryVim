-- plugins/nvimtree.lua

require('nvim-tree').setup {
  filters = {
    dotfiles = false,
  },
  git = {
    enable = true,
  },
  view = {
    width = 30,
    side = 'left',
  },
}

