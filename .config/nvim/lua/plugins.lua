local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    return packer_bootstrap =
        fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    
end

return require("packer").startup(
    {
        function(use)
            vim.cmd [[packadd packer.nvim]]

            -- vim.cmd [[ autocmd BufWritePost plugins.lua echo 'Compiling Packer...' | PackerSync ]]
            -- Packer can manage itself
            use "wbthomason/packer.nvim"

            -- file tree explorer
            use "mcchrish/nnn.vim"
            vim.cmd([[ let g:nnn#layout = { 'left': '~40%' } " or right, up, down ]])
            -- vim.cmd([[ let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } } ]])
            -- vim.cmd([[ nnoremap <leader><tab> :NnnPicker %:p:h<CR><leader>]])
            vim.api.nvim_set_keymap("n", "<leader><tab>", ":NnnPicker %:p:h<CR>", {noremap = true})

            use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
            use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

            -- treesitter
            use {
                "nvim-treesitter/nvim-treesitter",
                run = ":TSUpdate",
                config = function()
                    require("config/treesitter")
                end
            }
            --
            -- lsp stuff
            use {
                "neovim/nvim-lspconfig",
                config = function()
                    require "lspconfig".tsserver.setup {}
                    require "lspconfig".vuels.setup {}
                end
            }
            -- use 'anott03/nvim-lspinstall'
            use "williamboman/nvim-lsp-installer"

            -- telescope stuff
            use "tami5/sql.nvim"
            use {
                "nvim-telescope/telescope.nvim",
                requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}},
                config = function()
                    require("config/telescope")
                end
            }
            use {
                "nvim-telescope/telescope-frecency.nvim",
                requires = {"tami5/sql.nvim"},
                config = function()
                    require "telescope".load_extension("frecency")
                end
            }

            -- statusline
            use {
                "datwaft/bubbly.nvim",
                config = function()
                    -- Here you can add the configuration for the plugin
                    vim.g.bubbly_palette = {
                        background = "#34343c",
                        foreground = "#c5cdd9",
                        black = "#3e4249",
                        red = "#ec7279",
                        green = "#a0c980",
                        yellow = "#deb974",
                        blue = "#6cb6eb",
                        purple = "#d38aea",
                        cyan = "#5dbbc1",
                        white = "#c5cdd9",
                        lightgrey = "#57595e",
                        darkgrey = "#404247"
                    }
                    vim.g.bubbly_statusline = {
                        "mode",
                        "truncate",
                        "path",
                        "branch",
                        "signify",
                        "gitsigns",
                        "coc",
                        "divisor",
                        "filetype",
                        "progress"
                    }
                end
            }

            -- colorschemes
            use "drewtempelmeyer/palenight.vim"
            use {
                "sainnhe/edge",
                config = function()
                    vim.g.edge_style = "neon"
                    -- vim.cmd([[colorscheme edge]])
                    -- vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
                end
            }

            use {
                "ellisonleao/gruvbox.nvim",
                config = function()
                    vim.cmd([[colorscheme gruvbox]])
                    vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
                end
            }

            use {
                "rebelot/kanagawa.nvim",
                config = function()
                    -- vim.cmd([[colorscheme kanagawa]])
                    -- vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
                end
            }
            -- use 'eddyekofo94/gruvbox-flat.nvim'
            -- use 'ellisonleao/gruvbox.nvim'

            use "folke/tokyonight.nvim"
            -- use 'tiagovla/tokyodark.nvim '
            use "wojciechkepka/bogster"

            -- Lazy loading:
            -- Load on specific commands
            use {"tpope/vim-dispatch", opt = true, cmd = {"Dispatch", "Make", "Focus", "Start"}}

            -- git plugins
            use {
                "tpope/vim-fugitive",
                setup = function()
                    require("config/fugitive")
                end
            }
            use {
                "aacunningham/vim-fuzzy-stash",
                setup = function()
                    require("config/vim-fuzzy-stash")
                end
            }
            use {
                "lewis6991/gitsigns.nvim",
                requires = {"nvim-lua/plenary.nvim"},
                config = function()
                    require("config/gitsigns")
                end
            }

            -- movement
            use "tpope/vim-surround"
            use "rhysd/clever-f.vim"
            use "haya14busa/incsearch.vim"
            use "dietsche/vim-lastplace"

            -- quickfix
            use "stefandtw/quickfix-reflector.vim"
            use "romainl/vim-qf"

            -- bookmarks
            use {
                "MattesGroeger/vim-bookmarks",
                config = function()
                    require("config/vim-bookmarks")
                end
            }

            -- utilities
            use {
                "norcalli/nvim-colorizer.lua",
                config = function()
                    require "colorizer".setup()
                end
            }
            use "mattn/emmet-vim"
            use "Raimondi/delimitMate" -- pairing
            use {
                "junegunn/vim-easy-align",
                config = function()
                    require("config/vim-easy-align")
                end
            }
            use {
                "wellle/targets.vim",
                config = function()
                    require("config/targets")
                end
            }
            use {
                "jojoyuji/switch.vim",
                config = function()
                    require("config/switch")
                end
            }
            use {"evanleck/vim-svelte"}

            use {
                "tyru/caw.vim",
                requires = "Shougo/context_filetype.vim",
                config = function()
                    require("config/caw")
                end
            }

            -- textobjects
            use "kana/vim-textobj-user"
            use "michaeljsmith/vim-indent-object"
            use "glts/vim-textobj-comment"
            use "hchbaw/textobj-motionmotion.vim"
            use "kana/vim-textobj-lastpat"

            -- syntax
            use {
                "dense-analysis/ale",
                config = function()
                    require("config/ale")
                end
            }
            use "elzr/vim-json"
            use "nicwest/vim-http"

            -- snippets
            -- use { "L3MON4D3/LuaSnip", config = function() end }
            --
            -- use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
            -- use "saadparwaiz1/cmp_luasnip" -- snippet completions
            -- --
            use {
                "hrsh7th/vim-vsnip",
                config = function()
                    require("config/vsnip")
                end
            }

            -- completion
            --
            use {
                "hrsh7th/nvim-cmp",
                config = function()
                    require("config/cmp")
                end
            }

            use "hrsh7th/cmp-nvim-lua"
            use "hrsh7th/cmp-buffer"
            use "hrsh7th/cmp-path"
            use "hrsh7th/cmp-cmdline"
            use "hrsh7th/cmp-vsnip"
            use {
                "hrsh7th/cmp-nvim-lsp",
                config = function()
                    require "cmp".setup {
                        sources = {
                            {name = "nvim_lsp"}
                        }
                    }
                    -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
                    local capabilities = vim.lsp.protocol.make_client_capabilities()
                    capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

                    -- The following example advertise capabilities to `clangd`.
                    require "lspconfig".clangd.setup {
                        capabilities = capabilities
                    }
                end
            }

            -- inutilities :)
            use "jojoyuji/megaman-vim"
            use "jojoyuji/nyancat-vim"
            use {
                "dbeniamine/todo.txt-vim",
                config = function()
                    require("config/todo")
                end
            }

            use {"folke/todo-comments.nvim"}
            use {
                "folke/trouble.nvim",
                requires = "kyazdani42/nvim-web-devicons",
                config = function()
                    require("trouble").setup {}
                end
            }

            -- gamee
            use "ThePrimeagen/vim-be-good"
            use "alec-gibson/nvim-tetris"

            -- questionable...
            use "junegunn/vim-emoji"

            use "tommcdo/vim-exchange"
            use "tpope/vim-scriptease"
            use "tpope/vim-repeat"
            use "tpope/vim-abolish"
            use "AndrewRadev/splitjoin.vim"
            use "vim-scripts/Gundo"
            use "tpope/vim-unimpaired"
            use "andymass/vim-matchup"
            use "29decibel/vim-stringify"
            use "editorconfig/editorconfig-vim"
            use "mattn/webapi-vim"
            use "posva/vim-vue"
            use "lambdalisue/vim-gista"
            use {
                "diepm/vim-rest-console",
                config = function()
                    require("config/vim-rest-console")
                end
            }

            -- " tmux
            use "tmux-plugins/vim-tmux-focus-events"
            use "wellle/tmux-complete.vim"
            use "christoomey/vim-tmux-navigator"
            use {
                "benmills/vimux",
                config = function()
                    require("config/vimux")
                end
            }

            -- my plugins
            use "~/.config/nvim/myPlugins"

            -- Automatically set up your configuration after cloning packer.nvim
            -- Put this at the end after all plugins
            if packer_bootstrap then
                require("packer").sync()
            end
        end,
        config = {
            max_jobs = 10
        }
    }
)
