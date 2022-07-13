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
			-- after = "nvim-lsp-installer",
			config = function()
				require("lsp/config")
			end,
		})

		-- file tree explorer
		use({
			"kyazdani42/nvim-tree.lua",
			requires = {
				"kyazdani42/nvim-web-devicons",
			},
			tag = "nightly", -- optional, updated every week. (see issue #1193)
			config = function()
				require("config/nvimtree")
			end,
		})

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

		use({
			"hrsh7th/nvim-cmp",
			config = function()
				require("config/cmp")
			end,
		})

		use({ "hrsh7th/cmp-vsnip" })
		use({ "hrsh7th/cmp-path" })
		use({ "hrsh7th/cmp-buffer" })
		use({ "hrsh7th/cmp-cmdline" })
		use({ "hrsh7th/cmp-emoji" })
		use({ "saadparwaiz1/cmp_luasnip" })
		use({
			"hrsh7th/cmp-nvim-lsp",
			config = function()
				require("config/cmp-nvim-lsp")
			end,
		})

		use({
			"L3MON4D3/LuaSnip",
			after = "nvim-cmp",
			config = function()
				require("config/luasnip")
			end,
		})
		use("rafamadriz/friendly-snippets")

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
		use("alec-gibson/nvim-tetris")

		-- questionable...
		use("tpope/vim-repeat")
		use("AndrewRadev/splitjoin.vim")
		use("tpope/vim-unimpaired")
		use("andymass/vim-matchup")
		use("editorconfig/editorconfig-vim")
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
