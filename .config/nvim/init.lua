require('configs')

vim.g.mapleader = " "
vim.o.termguicolors = true
vim.cmd('colorscheme base16-' .. os.getenv("BASE16_THEME"))

require('colorizer').setup()
require('gitsigns').setup()
require('mason').setup()
require('lualine').setup()
