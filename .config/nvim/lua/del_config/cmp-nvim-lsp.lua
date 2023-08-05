local status_ok, configs = pcall(require, "cmp")
if not status_ok then
	return
end
configs.setup({
	sources = {
		{ name = "nvim_lsp" },
	},
})
-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- The following example advertise capabilities to `clangd`.
require("lspconfig").clangd.setup({
	capabilities = capabilities,
})
require("lspconfig").tsserver.setup({
	capabilities = capabilities,
})
