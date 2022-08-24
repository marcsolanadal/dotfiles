-- :help options
local options = {
    termguicolors = true,
    number = true,
    relativenumber = true,
    cursorline = true,
    backup = false,
    swapfile = false,
    tabstop = 4, -- width of tab
    shiftwidth = 4, -- sets width of indents
    softtabstop = 4, -- sets number of columns for a tab
    expandtab = true, -- expands tabs to spaces
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

