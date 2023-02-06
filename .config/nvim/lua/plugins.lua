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
    use("wbthomason/packer.nvim")

    --mason
    use { 'williamboman/mason.nvim',
      config = function()
        require("mason").setup({
          PATH = "prepend", -- "skip" seems to cause the spawning error
        })
      end
    }

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

    -- use 'preservim/tagbar'
    -- use 'hushicai/tagbar-javascript.vim'
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

    use({
      "mbbill/undotree",
      config = function()
        vim.api.nvim_set_keymap(
          "n",
          "<leader><leader>u",
          ":UndotreeToggle<cr>",
          { noremap = true, silent = true }
        )
      end,
    })

    use({
      "AckslD/nvim-neoclip.lua",
      requires = {
        { "kkharji/sqlite.lua", module = "sqlite" },
        -- you'll need at least one of these
        { "nvim-telescope/telescope.nvim" },
        -- {'ibhagwan/fzf-lua'},
      },
      config = function()
        require("neoclip").setup({ default_register = "+" })
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
    -- harpoon
    use({
      'ThePrimeagen/harpoon',
      requires = { "nvim-lua/plenary.nvim" },
      config = function()
        vim.api.nvim_set_keymap("n", "<leader>h", ':lua require("harpoon.mark").add_file()<cr>',
          { noremap = true, silent = false })
        vim.api.nvim_set_keymap("n", "<leader><cr>", ':lua require("harpoon.ui").toggle_quick_menu()<cr>',
          { noremap = true, silent = false })
        vim.api.nvim_set_keymap("n", "<leader>]", ':lua require("harpoon.ui").nav_next()<cr>',
          { noremap = true, silent = false })
        vim.api.nvim_set_keymap("n", "<leader>[", ':lua require("harpoon.ui").nav_prev()<cr>',
          { noremap = true, silent = false })
        vim.api.nvim_set_keymap("n", "<leader>1", ':lua require("harpoon.ui").nav_file(1)<cr>',
          { noremap = true, silent = false })
        vim.api.nvim_set_keymap("n", "<leader>2", ':lua require("harpoon.ui").nav_file(2)<cr>',
          { noremap = true, silent = false })
        vim.api.nvim_set_keymap("n", "<leader>3", ':lua require("harpoon.ui").nav_file(3)<cr>',
          { noremap = true, silent = false })
        vim.api.nvim_set_keymap("n", "<leader>4", ':lua require("harpoon.ui").nav_file(4)<cr>',
          { noremap = true, silent = false })
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
      "sainnhe/sonokai",
      config = function()
        vim.g.sonokai_style = "espresso"
        -- vim.cmd([[colorscheme sonokai]])
        -- vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
      end,
    })

    use({
      "ellisonleao/gruvbox.nvim",
      -- commit = 'cb7a8a867cfaa7f0e8ded57eb931da88635e7007',
      config = function()
        require("gruvbox").setup({
          -- contrast = "hard", -- can be "hard", "soft" or empty string
          undercurl = true,
          underline = true,
          bold = true,
          italic = true,
          strikethrough = true,
          invert_selection = false,
          invert_signs = false,
          invert_tabline = false,
          invert_intend_guides = false,
          inverse = true, -- invert background for search, diffs, statuslines and errors
          contrast = "", -- can be "hard", "soft" or empty string
          overrides = {},
          dim_inactive = false,
          transparent_mode = false,
        })
        vim.cmd([[colorscheme gruvbox]])
        vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
      end,
    })


    use("folke/tokyonight.nvim")
    use("wojciechkepka/bogster")

    -- git plugins
    use({
      "kdheepak/lazygit.nvim",
      setup = function()
        require('config/lazygit')
      end,
    })

    use("tpope/vim-dispatch")
    -- use({
    --   "tpope/vim-fugitive",
    --   setup = function()
    --     require("config/fugitive")
    --   end,
    -- })

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
    use("dstein64/vim-startuptime")
    use({
      'szw/vim-maximizer',
      config = function()
        vim.api.nvim_set_keymap('n', '<leader>z', ':MaximizerToggle<cr>', {})
      end
    })
    use({
      -- "phaazon/hop.nvim",
      "aznhe21/hop.nvim",
      branch = "fix-some-bugs", -- optional but strongly recommended
      config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require("hop").setup({
          keys = "etovxqpdygfblzhckisuran",
          create_hl_autocmd = true,
          uppercase_labels = false,
          -- hint_offset = 1,
          -- hint_position = require'hop.hint'.HintPosition.END,
        })
        vim.api.nvim_set_keymap("n", "s", ":HopWordAC<cr>", { noremap = true, silent = false })
        vim.api.nvim_set_keymap("n", "S", ":HopWordBC<cr>", { noremap = true, silent = false })
        -- vim.api.nvim_set_keymap("n", "s", ":HopLineStart<cr>", { noremap = true, silent = false })
      end,
    })

    use({
      "slarwise/vim-tmux-send",
      config = function()
        vim.api.nvim_set_keymap(
          "n",
          "<leader>t",
          ":SendKeys 'pnpm\\ test ENTER'<cr>",
          { noremap = true, silent = false }
        )
        -- vim.api.nvim_set_keymap("n", "<leader><cr>", ":<Up><cr>", { noremap = true, silent = false })
      end,
    })

    use({
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("colorizer").setup()
      end,
    })
    use("mattn/emmet-vim")
    use("Raimondi/delimitMate") -- pairing
    use({
      "kg8m/vim-simple-align",
      config = function()
        vim.api.nvim_set_keymap("v", "aa", ":SimpleAlign ", { noremap = true, silent = false })
        vim.api.nvim_set_keymap(
          "v",
          "ah",
          ":SimpleAlign  -j left<left><left><left><left><left><left><left><left>",
          { noremap = true, silent = false }
        )
        vim.api.nvim_set_keymap(
          "v",
          "al",
          ":SimpleAlign  -j right<left><left><left><left><left><left><left><left><left>",
          { noremap = true, silent = false }
        )
      end,
    })
    use({
      "wellle/targets.vim",
      config = function()
        require("config/targets")
      end,
    })
    use({ "evanleck/vim-svelte" })
    use({
      "leafOfTree/vim-svelte-plugin",
      config = function()
        vim.g.vim_svelte_plugin_load_full_syntax = 1
      end,
    })

    use({
      "tyru/caw.vim",
      requires = "Shougo/context_filetype.vim",
      config = function()
        require("config/caw")
      end,
    })

    use("kylef/apiblueprint.vim")
    use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" })

    -- textobjects
    use("kana/vim-textobj-user")
    use("michaeljsmith/vim-indent-object")
    use("glts/vim-textobj-comment")
    use("hchbaw/textobj-motionmotion.vim")
    use("kana/vim-textobj-lastpat")

    -- syntax
    -- use({
    --   "dense-analysis/ale",
    --   config = function()
    --     require("config/ale")
    --   end,
    -- })
    -- 
    use({
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        local  null_ls_status_ok, null_ls = pcall(require, "null-ls")
        if not null_ls_status_ok then
          return
        end

        local formatting = null_ls.builtins.formatting
        -- local diagnostics = null_ls.builtins.diagnostics
        null_ls.setup({
          sources = {

            null_ls.builtins.diagnostics.eslint,
           -- formatting.prettier.with({extra_args = {"", "--single-quote"}}),
            formatting.eslint,
            formatting.prettier,
            -- formatting.prettier.with({extra_args = {"--no-semi", "--single-quote"}}),
            -- formatting.eslint.with({extra_args = {"--no-semi", "--single-quote"}}),
            formatting.stylua,
            -- formatting.fixjson,
            formatting.jsonls,
          },
        })
      end,
    })
    use("elzr/vim-json")

    use({
      "hrsh7th/nvim-cmp",
      requires = {
        { "saadparwaiz1/cmp_luasnip" },
        -- { "hrsh7th/cmp-vsnip" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-cmdline" },
        { "andersevenrud/cmp-tmux" },
        { "hrsh7th/cmp-emoji" },
        {
          "hrsh7th/cmp-nvim-lsp",
          config = function()
            require("config/cmp-nvim-lsp")
          end,
        },
      },
      config = function()
        require("config/cmp")
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

    use({ "folke/todo-comments.nvim", 

      -- TODO: hello
      requires = "nvim-lua/plenary.nvim",
      config = function() 
        require("todo-comments").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end,
    })
    use({
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup({})
      end,
    })

    --
    -- use('Pocco81/dap-buddy.nvim') -- doesnt work
    use({ 'mfussenegger/nvim-dap',
      config = function()
        require('config/dap/config')
      end,
    })
    use { "rcarriga/nvim-dap-ui",
      requires = { "mfussenegger/nvim-dap" },
      config = function()
        require('config/dap/ui')
        vim.api.nvim_set_keymap('n', '<leader>db', ':lua require("dapui").toggle()<cr>', {})
      end
    }

    -- gamee
    -- use("alec-gibson/nvim-tetris")

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
    use({ "~/.config/nvim/myPlugins", requires = { { "nvim-lua/plenary.nvim" } } })

    use({
      -- "AndrewRadev/switch.vim",
      "jojoyuji/switch.vim",
      config = function()
        require("config/switch")
      end,
    })

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
