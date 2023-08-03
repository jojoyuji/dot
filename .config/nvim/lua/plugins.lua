-- (\ /)
-- ( . .)
-- o(")(")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  -- completion
  'williamboman/mason.nvim',
  "williamboman/nvim-lsp-installer",
  "neovim/nvim-lspconfig",
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-cmdline",
  "andersevenrud/cmp-tmux",
  "hrsh7th/cmp-emoji",
  -- statusline
  "datwaft/bubbly.nvim",
  -- colorschemes,
  "drewtempelmeyer/palenight.vim",
  "sainnhe/edge",
  "sainnhe/sonokai",
  "ellisonleao/gruvbox.nvim",
  "folke/tokyonight.nvim",
  "wojciechkepka/bogster",
  -- movement,
  "aznhe21/hop.nvim",
  -- textobjects,
  "kana/vim-textobj-user",
  { "michaeljsmith/vim-indent-object",lazy = true },
  { "glts/vim-textobj-comment", lazy = true },
  { "hchbaw/textobj-motionmotion.vim", lazy = true },
  -- { "kana/vim-textobj-lastpat", lazy = true },
  -- operations,
  "kylechui/nvim-surround",
  "rhysd/clever-f.vim",
  "haya14busa/incsearch.vim",
  "dietsche/vim-lastplace",
  -- quickfix,
  "stefandtw/quickfix-reflector.vim",
  "romainl/vim-qf",
  -- bookmarks,
  "MattesGroeger/vim-bookmarks",
  "mbbill/undotree",
  -- git,
  "aacunningham/vim-fuzzy-stash",
  --  "kdheepak/lazygit.nvim",
  "tpope/vim-fugitive",
  "f-person/git-blame.nvim",
  -- {
  --   "lewis6991/gitsigns.nvim",
  --   dependencies = "nvim-lua/plenary.nvim"
  -- },
  -- comments
  {
    "tyru/caw.vim",
    dependencies = "Shougo/context_filetype.vim"
  },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim"
  },
  {
    "folke/trouble.nvim",
    dependencies = "kyazdani42/nvim-web-devicons",
  },
  -- utilities,
  "vimwiki/vimwiki",
  "rcarriga/nvim-notify",
  "dstein64/vim-startuptime",
  'szw/vim-maximizer',
  "slarwise/vim-tmux-send",
  "kylef/apiblueprint.vim",
  "norcalli/nvim-colorizer.lua",
  "mattn/emmet-vim",
  "Raimondi/delimitMate",
  "kg8m/vim-simple-align",
  "wellle/targets.vim",
  "evanleck/vim-svelte",
  "leafOfTree/vim-svelte-plugin",
  "dbeniamine/todo.txt-vim",
  { "iamcco/markdown-preview.nvim", build = "cd app && npm install" },
  -- inutilities :)
  "jojoyuji/megaman-vim",
  "jojoyuji/nyancat-vim",
  -- " tmux,
  "tmux-plugins/vim-tmux-focus-events",
  "wellle/tmux-complete.vim",
  "christoomey/vim-tmux-navigator",
  "benmills/vimux",
  -- syntax
  "elzr/vim-json",
  -- questionable...
  "tpope/vim-repeat",
  "AndrewRadev/splitjoin.vim",
  "tpope/vim-unimpaired",
  "andymass/vim-matchup",
  "editorconfig/editorconfig-vim",
  "posva/vim-vue",
  "lambdalisue/vim-gista",
  "diepm/vim-rest-console",
  "jojoyuji/switch.vim",
  "tpope/vim-dispatch",
  "nvim-treesitter/nvim-treesitter",
  -- my plugins
  -- ({ "~/.config/nvim/myPlugins", dependencies = { "nvim-lua/plenary.nvim" } }),
  -- file tree explorer
  {
    "kyazdani42/nvim-tree.lua",
    dependencies = {
      "kyazdani42/nvim-web-devicons",
    }
  },
  -- telescope stuff
  "tami5/sql.nvim",
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } }
  },
  -- harpoon
  {
    'ThePrimeagen/harpoon',
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "AckslD/nvim-neoclip.lua",
    dependencies = {
      { "kkharji/sqlite.lua",           module = "sqlite" },
      { "nvim-telescope/telescope.nvim" },
    },
  },
})
