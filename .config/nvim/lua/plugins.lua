-- (\ /)
-- ( . .)
-- o(")(")

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
    use "wbthomason/packer.nvim"
    -- completion
    use 'williamboman/mason.nvim'
    use "williamboman/nvim-lsp-installer"
    use "neovim/nvim-lspconfig"
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use "rafamadriz/friendly-snippets"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-cmdline"
    use "andersevenrud/cmp-tmux"
    use "hrsh7th/cmp-emoji"
    -- statusline
    use "datwaft/bubbly.nvim"
    -- colorschemes
    use "drewtempelmeyer/palenight.vim"
    use "sainnhe/edge"
    use "sainnhe/sonokai"
    use "ellisonleao/gruvbox.nvim"
    use "folke/tokyonight.nvim"
    use "wojciechkepka/bogster"
    -- movement
    use "aznhe21/hop.nvim"
    -- textobjects
    use "kana/vim-textobj-user"
    use "michaeljsmith/vim-indent-object"
    use "glts/vim-textobj-comment"
    use "hchbaw/textobj-motionmotion.vim"
    use "kana/vim-textobj-lastpat"
    -- operations
    use "kylechui/nvim-surround"
    use "rhysd/clever-f.vim"
    use "haya14busa/incsearch.vim"
    use "dietsche/vim-lastplace"
    -- quickfix
    use "stefandtw/quickfix-reflector.vim"
    use "romainl/vim-qf"
    -- bookmarks
    use "MattesGroeger/vim-bookmarks"
    use "mbbill/undotree"
    -- git
    use "aacunningham/vim-fuzzy-stash"
    -- use "kdheepak/lazygit.nvim"
    use "tpope/vim-fugitive"
    use "f-person/git-blame.nvim"
    use {
      "lewis6991/gitsigns.nvim",
      requires = { "nvim-lua/plenary.nvim" }
    }
    -- comments
    use {
      "tyru/caw.vim",
      requires = "Shougo/context_filetype.vim"
    }
    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim"
    }
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
    }
    -- utilities
    use "vimwiki/vimwiki"
    use "rcarriga/nvim-notify"
    use "dstein64/vim-startuptime"
    use 'szw/vim-maximizer'
    use "slarwise/vim-tmux-send"
    use "kylef/apiblueprint.vim"
    use "norcalli/nvim-colorizer.lua"
    use "mattn/emmet-vim"
    use "Raimondi/delimitMate"
    use "kg8m/vim-simple-align"
    use "wellle/targets.vim"
    use "evanleck/vim-svelte"
    use "leafOfTree/vim-svelte-plugin"
    use "dbeniamine/todo.txt-vim"
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" })
    -- inutilities :)
    use "jojoyuji/megaman-vim"
    use "jojoyuji/nyancat-vim"
    -- " tmux
    use "tmux-plugins/vim-tmux-focus-events"
    use "wellle/tmux-complete.vim"
    use "christoomey/vim-tmux-navigator"
    use "benmills/vimux"
    -- syntax
    use "elzr/vim-json"
    -- questionable...
    use "tpope/vim-repeat"
    use "AndrewRadev/splitjoin.vim"
    use "tpope/vim-unimpaired"
    use "andymass/vim-matchup"
    use "editorconfig/editorconfig-vim"
    use "posva/vim-vue"
    use "lambdalisue/vim-gista"
    use "diepm/vim-rest-console"
    use "jojoyuji/switch.vim"
    use "tpope/vim-dispatch"
    use "nvim-treesitter/nvim-treesitter"
    -- my plugins
    use({ "~/.config/nvim/myPlugins", requires = { "nvim-lua/plenary.nvim" } })
    -- file tree explorer
    use({
      "kyazdani42/nvim-tree.lua",
      requires = {
        "kyazdani42/nvim-web-devicons",
      }
    })
    -- telescope stuff
    use("tami5/sql.nvim")
    use({
      "nvim-telescope/telescope.nvim",
      requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } }
    })
    -- harpoon
    use({
      'ThePrimeagen/harpoon',
      requires = { "nvim-lua/plenary.nvim" }
    })
    use({
      "AckslD/nvim-neoclip.lua",
      requires = {
        { "kkharji/sqlite.lua",           module = "sqlite" },
        { "nvim-telescope/telescope.nvim" },
      },
    })

    -- use({
    --   "hrsh7th/nvim-cmp",
    --   requires = {
    --     { "saadparwaiz1/cmp_luasnip" },
    --     { "hrsh7th/cmp-path" },
    --     { "hrsh7th/cmp-buffer" },
    --     { "hrsh7th/cmp-cmdline" },
    --     { "andersevenrud/cmp-tmux" },
    --     { "hrsh7th/cmp-emoji" },
    --   },
    --   config = function()
    --     require("conf/cmp")
    --   end,
    -- })
    --
    -- use({
    --   "L3MON4D3/LuaSnip",
    --   after = "nvim-cmp",
    --   config = function()
    --     require("conf/luasnip")
    --   end,
    -- })
    -- use("rafamadriz/friendly-snippets")


    -- DEBUGGER - WIP
    -- use({
    --   'mfussenegger/nvim-dap',
    --   config = function()
    --     require('config/dap/config')
    --   end,
    -- })
    -- use { "rcarriga/nvim-dap-ui",
    --   requires = { "mfussenegger/nvim-dap" },
    --   config = function()
    --     require('config/dap/ui')
    --     vim.api.nvim_set_keymap('n', '<leader>db', ':lua require("dapui").toggle()<cr>', {})
    --   end
    -- }

    if packer_bootstrap then
      require("packer").sync()
    end
  end,
  config = {
    max_jobs = 5,
  },
})
