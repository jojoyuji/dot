-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.cmd [[ autocmd BufWritePost plugins.lua echo 'Compiling Packer...' | PackerCompile ]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- file tree explorer

  -- use {'kyazdani42/nvim-tree.lua', 
  --   requires = 'kyazdani42/nvim-web-devicons',
  --   config = function() require('config/nvimtree') end
  -- }

  use 'mcchrish/nnn.vim'
  vim.cmd([[ let g:nnn#layout = { 'left': '~30%' } " or right, up, down ]])
  -- vim.cmd([[ let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } } ]])
  vim.cmd([[ nnoremap <leader><tab> :NnnPicker %:p:h<CR><leader> ]])

  -- use 'ms-jpq/chadtree'
  -- vim.cmd([[ nnoremap <leader><tab> :CHADopen<cr> ]])


  -- lsp stuff
  use 'neovim/nvim-lspconfig'
  use 'anott03/nvim-lspinstall'

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
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

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
  use 'nicwest/vim-http'

  -- snippets / compe
  -- use 'hrsh7th/vim-vsnip-integ'
  -- use {'hrsh7th/vim-vsnip', config = function() require('config/vsnip') end}
  -- use {'hrsh7th/nvim-compe', config = function() require('config/compe') end}

  -- coc
  use {'neoclide/coc.nvim', branch = 'release', config = function() require('config/coc') end }
  use {'iamcco/coc-tailwindcss', run = 'yarn install --frozen-lockfile && yarn run build' }
  use 'rafcamlet/coc-nvim-lua'

  -- inutilities :)
  use 'jojoyuji/megaman-vim'
  use 'jojoyuji/nyancat-vim'
  use {'dbeniamine/todo.txt-vim', config = function() require('config/todo') end}

 use {
  'folke/todo-comments.nvim',
  config = function()
    require('todo-comments').setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
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
  -- use 'vim-scripts/matchit.zip'
  use 'andymass/vim-matchup'
  use '29decibel/vim-stringify'
  use 'editorconfig/editorconfig-vim'
  use 'mattn/webapi-vim'
  use 'posva/vim-vue'
  use 'lambdalisue/vim-gista'
  use {'diepm/vim-rest-console', config = function() require('config/vim-rest-console') end} 
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- " tmux
  use 'tmux-plugins/vim-tmux-focus-events'
  use 'wellle/tmux-complete.vim'
  use 'christoomey/vim-tmux-navigator'
  use {'benmills/vimux', config = function() require('config/vimux') end}

  -- my plugins
  use '~/.config/nvim/myPlugins'

  -- firenvim
  -- use { 'glacambre/firenvim', config = function() 
  --   vim.cmd([[:call firenvim#install()]]) end }

end)
