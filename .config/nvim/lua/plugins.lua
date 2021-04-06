-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.cmd [[ autocmd BufWritePost plugins.lua echo 'Compiling Packer...' | PackerCompile ]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- file tree explorer
  use {'kyazdani42/nvim-tree.lua', 
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('config/nvimtree') end
  }
   

  -- lsp stuff
  use 'neovim/nvim-lspconfig'
  use 'anott03/nvim-lspinstall'

  -- use 'kyazdani42/nvim-web-devicons'
  -- telescope stuff

  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}

  use 'tami5/sql.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    config = function() require('config/telescope') end
  }
  use {
    'nvim-telescope/telescope-frecency.nvim',
    requires = { {'tami5/sql.nvim'} },
    config = function() require'telescope'.load_extension('frecency') end
  }

  -- statusline
  use { 'glepnir/galaxyline.nvim', branch = 'main',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function() require'config/galaxyline' end,
  }

  -- colorschemes
  use 'drewtempelmeyer/palenight.vim'
  use { 'sainnhe/edge', setup = function() vim.g.edge_style = 'neon' end}
  use {
    'lifepillar/vim-gruvbox8',
    setup = function()
      vim.g.gruvbox_contrast_dark='hard'
      vim.cmd([[colorscheme gruvbox8_hard]])
      vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
    end
  }
  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}


  -- git plugins
  use {'tpope/vim-fugitive',setup = function() require('config/fugitive') end}
  use {'aacunningham/vim-fuzzy-stash', setup = function() require('config/vim-fuzzy-stash') end }
  use 'mhinz/vim-signify'


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
  use 'airblade/vim-rooter'
  use 'ap/vim-css-color'
  use 'mattn/emmet-vim'
  use 'maksimr/vim-jsbeautify'
  use 'Raimondi/delimitMate' -- pairing
  use {'junegunn/vim-easy-align', config = function() require('config/vim-easy-align') end}
  use {'wellle/targets.vim', config = function() require('config/targets') end}
  use {'jojoyuji/switch.vim', config = function() require('config/switch') end}

  use{'tyru/caw.vim', 
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

  -- COC
  use {'neoclide/coc.nvim', branch = 'release', config = function() require('config/coc') end }
  use {'iamcco/coc-tailwindcss', run = 'yarn install --frozen-lockfile && yarn run build' }
  use 'rafcamlet/coc-nvim-lua'

  -- inutilities :)
  use 'jojoyuji/megaman-vim'
  use 'jojoyuji/nyancat-vim'
  use {'dbeniamine/todo.txt-vim', config = function() require('config/todo') end}
  
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
  use 'vim-scripts/matchit.zip'
  use '29decibel/vim-stringify'
  use 'editorconfig/editorconfig-vim'
  use 'mattn/webapi-vim'
  use 'lambdalisue/vim-gista'

  use { 'diepm/vim-rest-console', config = function() require('config/vim-rest-console') end} 
  -- let g:vrc_curl_opts = { '--connect-timeout' : 10, '-L': '', '-sS': '', '-i': '', '--max-time': 60, '--ipv4': '', '-k': '', }

  -- " tmux
  use 'tmux-plugins/vim-tmux-focus-events'
  use 'wellle/tmux-complete.vim'
  use 'christoomey/vim-tmux-navigator'
  use {'benmills/vimux', config = function() require('config/vimux') end}

  -- PATCH

  -- use {
  --   'fhill2/telescope-ultisnips.nvim',
  --   config = function()
  --     require('telescope').setup()
  --     require'telescope'.load_extension('ultisnips')
  --   end
  -- }

  -- Simple plugins can be specified as strings
  -- use '9mm/vim-closer'


  -- Load on an autocommand event
  -- use {'andymass/vim-matchup', event = 'VimEnter'}

  -- Load on a combination of conditions: specific filetypes or commands
  -- Also run code after load (see the "config" key)
  -- use {
  --   'w0rp/ale',
  --   ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
  --   cmd = 'ALEEnable',
  --   config = 'vim.cmd[[ALEEnable]]'
  -- }

  -- Plugins can have dependencies on other plugins
  -- use {
  --   'haorenW1025/completion-nvim',
  --   opt = true,
  --   requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  -- }

  -- Plugins can also depend on rocks from luarocks.org:
  -- use {
  --   'my/supercoolplugin',
  --   rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
  -- }

  -- You can specify rocks in isolation
  -- use_rocks 'penlight'
  -- use_rocks {'lua-resty-http', 'lpeg'}
  --
  -- Local plugins can be included
  -- use '~/projects/personal/hover.nvim'

  -- Plugins can have post-install/update hooks
  -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- Post-install/update hook with neovim command
  -- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Post-install/update hook with call of vimscript function with argument
  -- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- Use specific branch, dependency and run lua file after load
  -- use {
  --   'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
  --   requires = {'kyazdani42/nvim-web-devicons'}
  -- }

  -- Use dependency and run lua function after load
  -- use {
  --   'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
  --   config = function() require('gitsigns').setup() end
  -- }

  -- You can specify multiple plugins in a single call
  -- use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

  -- You can alias plugin names
  -- use {'dracula/vim', as = 'dracula'}
end)
