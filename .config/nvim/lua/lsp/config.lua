local lspconfig = require("lspconfig")
lspconfig.tsserver.setup({})
lspconfig.vuels.setup({})
lspconfig.pyright.setup({})
lspconfig.svelte.setup({})
lspconfig.tailwindcss.setup({})
lspconfig.sumneko_lua.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})
