local lspconfig = require("lspconfig")
lspconfig.tsserver.setup({})
lspconfig.vuels.setup({})
lspconfig.pyright.setup({})
lspconfig.svelte.setup({})
lspconfig.tailwindcss.setup({})
lspconfig.gopls.setup({})
lspconfig.golangci_lint_ls.setup({})

lspconfig.sumneko_lua.setup({
	settings = {
		lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})
