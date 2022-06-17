-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/jojo/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/jojo/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/jojo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/jojo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/jojo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  Gundo = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/Gundo",
    url = "https://github.com/vim-scripts/Gundo"
  },
  ale = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config/ale\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/ale",
    url = "https://github.com/dense-analysis/ale"
  },
  bogster = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/bogster",
    url = "https://github.com/wojciechkepka/bogster"
  },
  ["bubbly.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\2\0\6\0\t6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0K\0\1\0\1\v\0\0\tmode\rtruncate\tpath\vbranch\fsignify\rgitsigns\bcoc\fdivisor\rfiletype\rprogress\22bubbly_statusline\1\0\f\vyellow\f#deb974\15background\f#34343c\ngreen\f#a0c980\nwhite\f#c5cdd9\bred\f#ec7279\rdarkgrey\f#404247\nblack\f#3e4249\14lightgrey\f#57595e\15foreground\f#c5cdd9\tcyan\f#5dbbc1\vpurple\f#d38aea\tblue\f#6cb6eb\19bubbly_palette\6g\bvim\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/bubbly.nvim",
    url = "https://github.com/datwaft/bubbly.nvim"
  },
  ["caw.vim"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config/caw\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/caw.vim",
    url = "https://github.com/tyru/caw.vim"
  },
  ["clever-f.vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/clever-f.vim",
    url = "https://github.com/rhysd/clever-f.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\16\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0009\0\t\0B\0\1\0026\1\0\0'\3\n\0B\1\2\0029\1\v\1\18\3\0\0B\1\2\2\18\0\1\0006\1\0\0'\3\f\0B\1\2\0029\1\r\0019\1\2\0015\3\14\0=\0\15\3B\1\2\1K\0\1\0\17capabilities\1\0\0\vclangd\14lspconfig\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\fsources\1\0\0\1\0\1\tname\rnvim_lsp\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["context_filetype.vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/context_filetype.vim",
    url = "https://github.com/Shougo/context_filetype.vim"
  },
  delimitMate = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/delimitMate",
    url = "https://github.com/Raimondi/delimitMate"
  },
  edge = {
    config = { "\27LJ\2\n1\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\tneon\15edge_style\6g\bvim\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/edge",
    url = "https://github.com/sainnhe/edge"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config/gitsigns\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    config = { "\27LJ\2\ni\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0&hi Normal guibg=NONE ctermbg=NONE\24colorscheme gruvbox\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["incsearch.vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/incsearch.vim",
    url = "https://github.com/haya14busa/incsearch.vim"
  },
  ["kanagawa.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["megaman-vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/megaman-vim",
    url = "https://github.com/jojoyuji/megaman-vim"
  },
  myPlugins = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/myPlugins",
    url = "/Users/jojo/.config/nvim/myPlugins"
  },
  ["nnn.vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nnn.vim",
    url = "https://github.com/mcchrish/nnn.vim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config/cmp\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nj\0\0\3\0\5\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\nvuels\nsetup\rtsserver\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tetris"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-tetris",
    url = "https://github.com/alec-gibson/nvim-tetris"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config/treesitter\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nyancat-vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nyancat-vim",
    url = "https://github.com/jojoyuji/nyancat-vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["palenight.vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/palenight.vim",
    url = "https://github.com/drewtempelmeyer/palenight.vim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["quickfix-reflector.vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/quickfix-reflector.vim",
    url = "https://github.com/stefandtw/quickfix-reflector.vim"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["sql.nvim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/sql.nvim",
    url = "https://github.com/tami5/sql.nvim"
  },
  ["switch.vim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config/switch\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/switch.vim",
    url = "https://github.com/jojoyuji/switch.vim"
  },
  ["targets.vim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config/targets\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/targets.vim",
    url = "https://github.com/wellle/targets.vim"
  },
  ["telescope-frecency.nvim"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config/telescope\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["textobj-motionmotion.vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/textobj-motionmotion.vim",
    url = "https://github.com/hchbaw/textobj-motionmotion.vim"
  },
  ["tmux-complete.vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/tmux-complete.vim",
    url = "https://github.com/wellle/tmux-complete.vim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["todo.txt-vim"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16config/todo\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/todo.txt-vim",
    url = "https://github.com/dbeniamine/todo.txt-vim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-be-good"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  },
  ["vim-bookmarks"] = {
    config = { "\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25config/vim-bookmarks\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-bookmarks",
    url = "https://github.com/MattesGroeger/vim-bookmarks"
  },
  ["vim-dispatch"] = {
    commands = { "Dispatch", "Make", "Focus", "Start" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/opt/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-easy-align"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26config/vim-easy-align\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-emoji"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-emoji",
    url = "https://github.com/junegunn/vim-emoji"
  },
  ["vim-exchange"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-exchange",
    url = "https://github.com/tommcdo/vim-exchange"
  },
  ["vim-fugitive"] = {
    loaded = true,
    needs_bufread = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-fuzzy-stash"] = {
    loaded = true,
    needs_bufread = false,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/opt/vim-fuzzy-stash",
    url = "https://github.com/aacunningham/vim-fuzzy-stash"
  },
  ["vim-gista"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-gista",
    url = "https://github.com/lambdalisue/vim-gista"
  },
  ["vim-http"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-http",
    url = "https://github.com/nicwest/vim-http"
  },
  ["vim-indent-object"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-indent-object",
    url = "https://github.com/michaeljsmith/vim-indent-object"
  },
  ["vim-json"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-json",
    url = "https://github.com/elzr/vim-json"
  },
  ["vim-lastplace"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-lastplace",
    url = "https://github.com/dietsche/vim-lastplace"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-qf"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-qf",
    url = "https://github.com/romainl/vim-qf"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-rest-console"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28config/vim-rest-console\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-rest-console",
    url = "https://github.com/diepm/vim-rest-console"
  },
  ["vim-scriptease"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-scriptease",
    url = "https://github.com/tpope/vim-scriptease"
  },
  ["vim-stringify"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-stringify",
    url = "https://github.com/29decibel/vim-stringify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-svelte"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-svelte",
    url = "https://github.com/evanleck/vim-svelte"
  },
  ["vim-textobj-comment"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-textobj-comment",
    url = "https://github.com/glts/vim-textobj-comment"
  },
  ["vim-textobj-lastpat"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-textobj-lastpat",
    url = "https://github.com/kana/vim-textobj-lastpat"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-tmux-focus-events"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-tmux-focus-events",
    url = "https://github.com/tmux-plugins/vim-tmux-focus-events"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-vsnip"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17config/vsnip\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vue"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-vue",
    url = "https://github.com/posva/vim-vue"
  },
  vimux = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17config/vimux\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vimux",
    url = "https://github.com/benmills/vimux"
  },
  ["webapi-vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/webapi-vim",
    url = "https://github.com/mattn/webapi-vim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: vim-fuzzy-stash
time([[Setup for vim-fuzzy-stash]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27config/vim-fuzzy-stash\frequire\0", "setup", "vim-fuzzy-stash")
time([[Setup for vim-fuzzy-stash]], false)
time([[packadd for vim-fuzzy-stash]], true)
vim.cmd [[packadd vim-fuzzy-stash]]
time([[packadd for vim-fuzzy-stash]], false)
-- Setup for: vim-fugitive
time([[Setup for vim-fugitive]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config/fugitive\frequire\0", "setup", "vim-fugitive")
time([[Setup for vim-fugitive]], false)
time([[packadd for vim-fugitive]], true)
vim.cmd [[packadd vim-fugitive]]
time([[packadd for vim-fugitive]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: cmp-nvim-lsp
time([[Config for cmp-nvim-lsp]], true)
try_loadstring("\27LJ\2\n�\2\0\0\5\0\16\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0009\0\t\0B\0\1\0026\1\0\0'\3\n\0B\1\2\0029\1\v\1\18\3\0\0B\1\2\2\18\0\1\0006\1\0\0'\3\f\0B\1\2\0029\1\r\0019\1\2\0015\3\14\0=\0\15\3B\1\2\1K\0\1\0\17capabilities\1\0\0\vclangd\14lspconfig\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\fsources\1\0\0\1\0\1\tname\rnvim_lsp\nsetup\bcmp\frequire\0", "config", "cmp-nvim-lsp")
time([[Config for cmp-nvim-lsp]], false)
-- Config for: gruvbox.nvim
time([[Config for gruvbox.nvim]], true)
try_loadstring("\27LJ\2\ni\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0&hi Normal guibg=NONE ctermbg=NONE\24colorscheme gruvbox\bcmd\bvim\0", "config", "gruvbox.nvim")
time([[Config for gruvbox.nvim]], false)
-- Config for: vim-easy-align
time([[Config for vim-easy-align]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26config/vim-easy-align\frequire\0", "config", "vim-easy-align")
time([[Config for vim-easy-align]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nj\0\0\3\0\5\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\nvuels\nsetup\rtsserver\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: kanagawa.nvim
time([[Config for kanagawa.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "kanagawa.nvim")
time([[Config for kanagawa.nvim]], false)
-- Config for: vim-rest-console
time([[Config for vim-rest-console]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28config/vim-rest-console\frequire\0", "config", "vim-rest-console")
time([[Config for vim-rest-console]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17config/vsnip\frequire\0", "config", "vim-vsnip")
time([[Config for vim-vsnip]], false)
-- Config for: targets.vim
time([[Config for targets.vim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config/targets\frequire\0", "config", "targets.vim")
time([[Config for targets.vim]], false)
-- Config for: bubbly.nvim
time([[Config for bubbly.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\2\0\6\0\t6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0K\0\1\0\1\v\0\0\tmode\rtruncate\tpath\vbranch\fsignify\rgitsigns\bcoc\fdivisor\rfiletype\rprogress\22bubbly_statusline\1\0\f\vyellow\f#deb974\15background\f#34343c\ngreen\f#a0c980\nwhite\f#c5cdd9\bred\f#ec7279\rdarkgrey\f#404247\nblack\f#3e4249\14lightgrey\f#57595e\15foreground\f#c5cdd9\tcyan\f#5dbbc1\vpurple\f#d38aea\tblue\f#6cb6eb\19bubbly_palette\6g\bvim\0", "config", "bubbly.nvim")
time([[Config for bubbly.nvim]], false)
-- Config for: switch.vim
time([[Config for switch.vim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config/switch\frequire\0", "config", "switch.vim")
time([[Config for switch.vim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config/telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: telescope-frecency.nvim
time([[Config for telescope-frecency.nvim]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0", "config", "telescope-frecency.nvim")
time([[Config for telescope-frecency.nvim]], false)
-- Config for: caw.vim
time([[Config for caw.vim]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config/caw\frequire\0", "config", "caw.vim")
time([[Config for caw.vim]], false)
-- Config for: vimux
time([[Config for vimux]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17config/vimux\frequire\0", "config", "vimux")
time([[Config for vimux]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config/cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config/treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: edge
time([[Config for edge]], true)
try_loadstring("\27LJ\2\n1\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\tneon\15edge_style\6g\bvim\0", "config", "edge")
time([[Config for edge]], false)
-- Config for: ale
time([[Config for ale]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config/ale\frequire\0", "config", "ale")
time([[Config for ale]], false)
-- Config for: vim-bookmarks
time([[Config for vim-bookmarks]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25config/vim-bookmarks\frequire\0", "config", "vim-bookmarks")
time([[Config for vim-bookmarks]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config/gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: todo.txt-vim
time([[Config for todo.txt-vim]], true)
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16config/todo\frequire\0", "config", "todo.txt-vim")
time([[Config for todo.txt-vim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Focus lua require("packer.load")({'vim-dispatch'}, { cmd = "Focus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Start lua require("packer.load")({'vim-dispatch'}, { cmd = "Start", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Dispatch lua require("packer.load")({'vim-dispatch'}, { cmd = "Dispatch", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Make lua require("packer.load")({'vim-dispatch'}, { cmd = "Make", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end