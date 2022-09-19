-- Takes current base16 theme from env
--local colorscheme = "base16-" .. os.getenv("BASE16_THEME")

local colorscheme = "tokyonight-night"

-- Safely set colortheme
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
