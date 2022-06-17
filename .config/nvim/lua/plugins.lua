local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	vim.cmd([[Restart]])
	return vim.cmd([[PackerSync]])
end

return require("packer").startup({
	function(use)
		vim.cmd([[packadd packer.nvim]])
		vim.cmd([[ autocmd BufWritePost plugins.lua echo 'Compiling Packer...' | PackerCompile ]])
		-- Packer can manage itself
		use("wbthomason/packer.nvim")

		-- lsp
		use({
			"williamboman/nvim-lsp-installer",
			config = function()
				require("lsp/installer")
			end,
		})
		use({
			"neovim/nvim-lspconfig",
			config = function()
				require("lsp/config")
			end,
		})

		-- file tree explorer
		use("mcchrish/nnn.vim")
		vim.cmd([[ let g:nnn#layout = { 'left': '~40%' } " or right, up, down ]])
		vim.api.nvim_set_keymap("n", "<leader><tab>", ":NnnPicker %:p:h<CR>", { noremap = true })

		-- treesitter
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
			config = function()
				require("config/treesitter")
			end,
		})

		-- telescope stuff
		use("tami5/sql.nvim")
		use({
			"nvim-telescope/telescope.nvim",
			requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
			config = function()
				require("config/telescope")
			end,
		})
		use({
			"nvim-telescope/telescope-frecency.nvim",
			requires = { "tami5/sql.nvim" },
			config = function()
				require("telescope").load_extension("frecency")
			end,
		})

		-- statusline
		use({
			"datwaft/bubbly.nvim",
			config = function()
				require("config/bubbly")
			end,
		})

		-- colorschemes
		use("drewtempelmeyer/palenight.vim")
		use({
			"sainnhe/edge",
			config = function()
				vim.g.edge_style = "neon"
				-- vim.cmd([[colorscheme edge]])
				-- vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
			end,
		})

		use({
			"ellisonleao/gruvbox.nvim",
			config = function()
				vim.cmd([[colorscheme gruvbox]])
				vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
			end,
		})

		use("folke/tokyonight.nvim")
		use("wojciechkepka/bogster")

		-- git plugins
		use({
			"tpope/vim-fugitive",
			setup = function()
				require("config/fugitive")
			end,
		})
		use({
			"aacunningham/vim-fuzzy-stash",
			setup = function()
				require("config/vim-fuzzy-stash")
			end,
		})
		use({
			"lewis6991/gitsigns.nvim",
			requires = { "nvim-lua/plenary.nvim" },
			config = function()
				require("config/gitsigns")
			end,
		})

		-- movement
		use("tpope/vim-surround")
		use("rhysd/clever-f.vim")
		use("haya14busa/incsearch.vim")
		use("dietsche/vim-lastplace")

		-- quickfix
		use("stefandtw/quickfix-reflector.vim")
		use("romainl/vim-qf")

		-- bookmarks
		use({
			"MattesGroeger/vim-bookmarks",
			config = function()
				require("config/vim-bookmarks")
			end,
		})

		-- utilities
		use({
			"norcalli/nvim-colorizer.lua",
			config = function()
				require("colorizer").setup()
			end,
		})
		use("mattn/emmet-vim")
		use("Raimondi/delimitMate") -- pairing
		use({
			"junegunn/vim-easy-align",
			config = function()
				require("config/vim-easy-align")
			end,
		})
		use({
			"wellle/targets.vim",
			config = function()
				require("config/targets")
			end,
		})
		use({
			"jojoyuji/switch.vim",
			config = function()
				require("config/switch")
			end,
		})
		use({ "evanleck/vim-svelte" })

		use({
			"tyru/caw.vim",
			requires = "Shougo/context_filetype.vim",
			config = function()
				require("config/caw")
			end,
		})

		-- textobjects
		use("kana/vim-textobj-user")
		use("michaeljsmith/vim-indent-object")
		use("glts/vim-textobj-comment")
		use("hchbaw/textobj-motionmotion.vim")
		use("kana/vim-textobj-lastpat")

		-- syntax
		use({
			"dense-analysis/ale",
			config = function()
				require("config/ale")
			end,
		})
		use("elzr/vim-json")

		-- snippets
		-- use { "L3MON4D3/LuaSnip", config = function() end }
		-- use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
		-- use "saadparwaiz1/cmp_luasnip" -- snippet completions
		-- --
		use({
			"hrsh7th/vim-vsnip",
			config = function()
				require("config/vsnip")
			end,
		})

		-- completion
		use({
			"hrsh7th/nvim-cmp",
			config = function()
				require("config/cmp")
			end,
			requires = {
				-- not lazy-loading, so read after/plugin
				{ "hrsh7th/cmp-path" },
				{ "hrsh7th/cmp-buffer" },
				{ "hrsh7th/cmp-cmdline" },
				{ "hrsh7th/cmp-vsnip" },
				{
					"hrsh7th/cmp-nvim-lua",
					ft = "lua",
					-- this is after/plugin content
					config = function()
						require("cmp").register_source("nvim_lua", require("cmp_nvim_lua").new())
					end,
				},
				{
					"hrsh7th/cmp-nvim-lsp",
					-- ft = my_fts,
					config = function()
						require("cmp").setup({
							sources = {
								{ name = "nvim_lsp" },
							},
						})
						-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
						local capabilities = vim.lsp.protocol.make_client_capabilities()
						capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

						-- The following example advertise capabilities to `clangd`.
						require("lspconfig").clangd.setup({
							capabilities = capabilities,
						})
					end,
				},
			},
		})

		-- inutilities :)
		use("jojoyuji/megaman-vim")
		use("jojoyuji/nyancat-vim")
		use({
			"dbeniamine/todo.txt-vim",
			config = function()
				require("config/todo")
			end,
		})

		use({ "folke/todo-comments.nvim" })
		use({
			"folke/trouble.nvim",
			requires = "kyazdani42/nvim-web-devicons",
			config = function()
				require("trouble").setup({})
			end,
		})

		-- gamee
		use("ThePrimeagen/vim-be-good")
		use("alec-gibson/nvim-tetris")

		-- questionable...
		use("junegunn/vim-emoji")

		use("tommcdo/vim-exchange")
		use("tpope/vim-scriptease")
		use("tpope/vim-repeat")
		use("tpope/vim-abolish")
		use("AndrewRadev/splitjoin.vim")
		use("vim-scripts/Gundo")
		use("tpope/vim-unimpaired")
		use("andymass/vim-matchup")
		use("29decibel/vim-stringify")
		use("editorconfig/editorconfig-vim")
		use("mattn/webapi-vim")
		use("posva/vim-vue")
		use("lambdalisue/vim-gista")
		use({
			"diepm/vim-rest-console",
			config = function()
				require("config/vim-rest-console")
			end,
		})

		-- " tmux
		use("tmux-plugins/vim-tmux-focus-events")
		use("wellle/tmux-complete.vim")
		use("christoomey/vim-tmux-navigator")
		use({
			"benmills/vimux",
			config = function()
				require("config/vimux")
			end,
		})

		-- my plugins
		use("~/.config/nvim/myPlugins")

		-- Automatically set up your configuration after cloning packer.nvim
		-- Put this at the end after all plugins
		if packer_bootstrap then
			require("packer").sync()
		end
	end,
	config = {
		max_jobs = 5,
	},
})
