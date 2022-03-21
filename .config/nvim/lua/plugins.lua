--
-- #Check these plugins not updating:
-- folke/todo-comments.nvim
-- hrsh7th/cmp-path
-- pechorin/any-jump.vim
-- wellle/tmux-complete.vim
-- michaeljsmith/vim-indent-object
-- evanleck/vim-svelte
-- dense-analysis/ale
-- nvim-lua/popup.nvim
-- tami5/sql.nvim

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.cmd [[ autocmd BufWritePost plugins.lua echo 'Compiling Packer...' | PackerCompile ]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- file tree explorer
  use 'mcchrish/nnn.vim'
  vim.cmd([[ let g:nnn#layout = { 'left': '~40%' } " or right, up, down ]])
  -- vim.cmd([[ let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } } ]])
  -- vim.cmd([[ nnoremap <leader><tab> :NnnPicker %:p:h<CR><leader>]])
  vim.api.nvim_set_keymap('n', '<leader><tab>',':NnnPicker %:p:h<CR>',  { noremap = true })

  
  use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
  use 'nvim-lua/plenary.nvim' -- Useful lua functions used ny lots of plugins

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = function() require('config/treesitter') end}

  -- lsp stuff
  use 'neovim/nvim-lspconfig'
  -- use 'anott03/nvim-lspinstall'
  use 'williamboman/nvim-lsp-installer'

  -- telescope stuff
  use 'tami5/sql.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    config = function() require('config/telescope') end
  }
  use {
    'nvim-telescope/telescope-frecency.nvim',
    requires = {'tami5/sql.nvim'},
    config = function() require'telescope'.load_extension('frecency') end
  }

  -- statusline
  use {'datwaft/bubbly.nvim', config = function()
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
      darkgrey = "#404247",
    }
    vim.g.bubbly_statusline = {
      'mode',
      'truncate',
      'path',
      'branch',
      'signify',
      'gitsigns',
      'coc',
      'divisor',
      'filetype',
      'progress',
    }
  end}

  -- use {
  --   'nvim-lualine/lualine.nvim',
  --   setup =  function() require('lualine').setup() end,
  --   requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  -- }
  -- 
  -- colorschemes
  use 'drewtempelmeyer/palenight.vim'
  use { 'sainnhe/edge', config = function() 
      vim.g.edge_style = 'neon' 
        -- vim.cmd([[colorscheme edge]])
        -- vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
    end
  }

  use { 
    'ellisonleao/gruvbox.nvim',
    config = function() 
      vim.cmd([[colorscheme gruvbox]])
      vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
    end
  }


  use { 
    'rebelot/kanagawa.nvim',
    config = function() 
        -- vim.cmd([[colorscheme kanagawa]])
        -- vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
    end
  }
  -- use 'eddyekofo94/gruvbox-flat.nvim'
  -- use 'ellisonleao/gruvbox.nvim'

  use 'folke/tokyonight.nvim'
  -- use 'tiagovla/tokyodark.nvim '
  use 'wojciechkepka/bogster'

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- git plugins
  use {'tpope/vim-fugitive', setup = function() require('config/fugitive') end}
  use {'aacunningham/vim-fuzzy-stash', setup = function() require('config/vim-fuzzy-stash') end }
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() 
      require('config/gitsigns') end
  }
  --
  -- use {
  --   'lewis6991/gitsigns.nvim',
  --   config = function() require('gitsigns').setup() end
  -- }

  -- movement
  use 'tpope/vim-surround'
  use 'rhysd/clever-f.vim'
  use 'haya14busa/incsearch.vim'
  use 'dietsche/vim-lastplace'

  -- quickfix
  use 'stefandtw/quickfix-reflector.vim'
  use 'romainl/vim-qf'

  -- bookmarks
  use {'MattesGroeger/vim-bookmarks', config = function() require('config/vim-bookmarks') end}

  -- utilities
  use {'norcalli/nvim-colorizer.lua', config = function() require'colorizer'.setup() end}
  use 'mattn/emmet-vim'
  use 'maksimr/vim-jsbeautify'
  use 'Raimondi/delimitMate' -- pairing
  use {'junegunn/vim-easy-align', config = function() require('config/vim-easy-align') end}
  use {'wellle/targets.vim', config = function() require('config/targets') end}
  use {'jojoyuji/switch.vim', config = function() require('config/switch') end}
  use { 'evanleck/vim-svelte' }

  use {'tyru/caw.vim', 
    requires = 'Shougo/context_filetype.vim', 
    config = function() require('config/caw') end
  }

  -- textobjects
  use 'kana/vim-textobj-user'
  use 'michaeljsmith/vim-indent-object'
  use 'glts/vim-textobj-comment'
  use 'hchbaw/textobj-motionmotion.vim'
  use 'kana/vim-textobj-lastpat'

  -- syntax
  use {'dense-analysis/ale', config = function() require('config/ale') end}
  use 'elzr/vim-json' 
  use 'nicwest/vim-http'

  -- completion
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use { "hrsh7th/nvim-cmp", config = function() require('config/cmp') end } -- The completion plugin
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
 
  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- inutilities :)
  use 'jojoyuji/megaman-vim'
  use 'jojoyuji/nyancat-vim'
  use {'dbeniamine/todo.txt-vim', config = function() require('config/todo') end}

 use {
  'folke/todo-comments.nvim',
  -- config = function()
    -- require('todo-comments').setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    -- }
  -- end
  }
  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('trouble').setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
  end
  }

  -- gamee
  use 'ThePrimeagen/vim-be-good'
  use 'alec-gibson/nvim-tetris'

  -- questionable...
  use {'pechorin/any-jump.vim', config = function() require('config/any-jump') end}
  use 'junegunn/vim-emoji'

  use 'tommcdo/vim-exchange'
  use 'tpope/vim-scriptease'
  use 'tpope/vim-repeat'
  use 'tpope/vim-abolish'
  use 'AndrewRadev/splitjoin.vim'
  use 'vim-scripts/Gundo'
  use 'tpope/vim-unimpaired'
  use 'caglartoklu/launchassociated.vim'
  use 'andymass/vim-matchup'
  use '29decibel/vim-stringify'
  use 'editorconfig/editorconfig-vim'
  use 'mattn/webapi-vim'
  use 'posva/vim-vue'
  use 'lambdalisue/vim-gista'
  use {'diepm/vim-rest-console', config = function() require('config/vim-rest-console') end} 
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- " tmux
  use 'tmux-plugins/vim-tmux-focus-events'
  use 'wellle/tmux-complete.vim'
  use 'christoomey/vim-tmux-navigator'
  use {'benmills/vimux', config = function() require('config/vimux') end}

  -- my plugins
  use '~/.config/nvim/myPlugins'
  -- 
  -- -- firenvim
  -- use { 'glacambre/firenvim', config = function() vim.cmd([[:call firenvim#install()]]) end }

end)
