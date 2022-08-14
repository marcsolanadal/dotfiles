-- :help options
local options = {
	termguicolors = true,
	number = true,
	relativenumber = true,
	cursorline = true,
	backup = false,
	swapfile = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
 
