local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>g", ":FloatermNew --wintype=float --height=0.95 --width=0.95 --name=lazygit --autoclose=2 lazygit<cr>", opts)
keymap("n", "<leader>d", ":FloatermNew --wintype=float --height=0.95 --width=0.95 --name=lazygit --autoclose=2 lazydocker<cr>", opts)
keymap("n", "<leader>e", ":FloatermNew --wintype=float --height=0.95 --width=0.95 --name=lazygit --autoclose=2 nnn<cr>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<cr>", opts)
