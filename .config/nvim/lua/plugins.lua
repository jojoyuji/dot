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
  'AndrewRadev/switch.vim',
  -- completion
  "nvim-treesitter/nvim-treesitter",
  "nvim-treesitter/nvim-treesitter-context",
  { "folke/neodev.nvim", opts = {} }, -- autocomplete & utilities for nvim dev
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  "neovim/nvim-lspconfig",

  'nvimdev/lspsaga.nvim',
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
  -- colorschemes,
  "drewtempelmeyer/palenight.vim",
  "sainnhe/edge",
  "sainnhe/sonokai",
  "ellisonleao/gruvbox.nvim",
  "folke/tokyonight.nvim",
  "wojciechkepka/bogster",
  { "catppuccin/nvim",   name = "catppuccin", priority = 1000 },
  {
    'sainnhe/everforest',
    config = function()
      vim.cmd [[ let g:everforest_background="hard" ]]
    end
  },
  -- statusline
  'windwp/windline.nvim',
  -- movement,
  "aznhe21/hop.nvim",
  -- textobjects,
  "kana/vim-textobj-user",
  {
    "michaeljsmith/vim-indent-object",
    dependencies = "kana/vim-textobj-user",
  },
  {
    "glts/vim-textobj-comment",
    dependencies = "kana/vim-textobj-user",
  },
  {
    "hchbaw/textobj-motionmotion.vim",
    dependencies = "kana/vim-textobj-user",
  },
  {
    "jonatashashimoto/vim-textobj-lastpat",
    dependencies = "kana/vim-textobj-user",
  },
  -- operations,
  "kylechui/nvim-surround",
  "rhysd/clever-f.vim",
  "haya14busa/incsearch.vim",
  "dietsche/vim-lastplace",
  -- quickfix,
  "stefandtw/quickfix-reflector.vim",
  -- bookmarks,
  "MattesGroeger/vim-bookmarks",
  "mbbill/undotree",
  -- git,
  "aacunningham/vim-fuzzy-stash",
  "tpope/vim-fugitive",
  "f-person/git-blame.nvim",
  {
    "lewis6991/gitsigns.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    lazy = true,
  },
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
  'Konfekt/FastFold',
  'sk1418/HowMuch',
  { 'kevinhwang91/nvim-ufo',        dependencies = 'kevinhwang91/promise-async' },
  {
    'glacambre/firenvim',

    -- Lazy load firenvim
    -- Explanation:
    lazy = not vim.g.started_by_firenvim,
    build = function()
      vim.fn["firenvim#install"](0)
    end
  },
  "vimwiki/vimwiki",
  -- 'nvim-neorg/neorg',
  -- "lervag/wiki.vim",
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
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup()
      -- refer to `configuration to change defaults`
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl" },
  {
    "lukas-reineke/headlines.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true, -- or `opts = {}`
  },
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
  -- "AndrewRadev/splitjoin.vim",
  {
    'Wansmer/treesj',
    keys = { 'J', 'J', 'L' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup({})
    end,
  },
  "tpope/vim-unimpaired",
  "andymass/vim-matchup",
  "editorconfig/editorconfig-vim",
  "posva/vim-vue",
  "lambdalisue/vim-gista",
  "diepm/vim-rest-console",
  "tpope/vim-dispatch",

  -- Debugging
  {
    "mfussenegger/nvim-dap",
    lazy = true,
    dependencies = {
      "rcarriga/nvim-dap-ui",
    },
  },
  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = { "mfussenegger/nvim-dap" }
  },
  {
    "microsoft/vscode-js-debug",
    build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  },
  {
    "rcarriga/nvim-dap-ui",
  },
  "theHamsta/nvim-dap-virtual-text",
  "nvim-telescope/telescope-dap.nvim",
  -- my plugins
  {
    name = "myPlugins",
    dir = "~/.config/nvim/myPlugins",
    dev = true,
    dependencies = { "nvim-lua/plenary.nvim" },
  },
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
  --
  "nvim-lua/plenary.nvim",
  {
    'ThePrimeagen/harpoon',
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  {

    "AckslD/nvim-neoclip.lua",
    dependencies = {
      { "kkharji/sqlite.lua",           module = "sqlite" },
      { "nvim-telescope/telescope.nvim" },
    },
  },
}, {
  dev = {
    -- directory where you store your local plugin projects
    path = "~/.config/nvim/",
    ---@type string[] plugins that match these patterns will use your local
    patterns = {},    -- For example {"folke"}
    fallback = false, -- Fallback to git when local plugin doesn't exist
  },
}
)
