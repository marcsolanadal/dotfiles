local status_ok, _ = pcall(require, 'lspconfig')
if not status_ok then
	return
end

require('addon.lsp.mason')
require('addon.lsp.null-ls')


