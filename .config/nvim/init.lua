require('plugins')

vim.o.termguicolors = true
vim.cmd('colorscheme base16-' .. os.getenv("BASE16_THEME"))

require('feline').setup()
require('colorizer').setup()

