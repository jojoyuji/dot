-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

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
  LuaSnip = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config/luasnip\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["apiblueprint.vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/apiblueprint.vim",
    url = "https://github.com/kylef/apiblueprint.vim"
  },
  bogster = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/bogster",
    url = "https://github.com/wojciechkepka/bogster"
  },
  ["bubbly.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config/bubbly\frequire\0" },
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
  ["cmp-emoji"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24config/cmp-nvim-lsp\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-tmux"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/cmp-tmux",
    url = "https://github.com/andersevenrud/cmp-tmux"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
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
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config/gitsigns\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    config = { "\27LJ\2\nØ\2\0\0\4\0\t\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\0016\0\5\0009\0\6\0'\2\a\0B\0\2\0016\0\5\0009\0\6\0'\2\b\0B\0\2\1K\0\1\0&hi Normal guibg=NONE ctermbg=NONE\24colorscheme gruvbox\bcmd\bvim\14overrides\1\0\r\rcontrast\5\finverse\2\25invert_intend_guides\1\19invert_tabline\1\17invert_signs\1\21invert_selection\1\18strikethrough\2\vitalic\2\tbold\2\17dim_inactive\1\21transparent_mode\1\14underline\2\14undercurl\2\nsetup\fgruvbox\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  harpoon = {
    config = { "\27LJ\2\n÷\6\0\0\6\0\28\0A6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\16\0'\4\17\0005\5\18\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\19\0'\4\20\0005\5\21\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\22\0'\4\23\0005\5\24\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\25\0'\4\26\0005\5\27\0B\0\5\1K\0\1\0\1\0\2\vsilent\1\fnoremap\2/:lua require(\"harpoon.ui\").nav_file(4)<cr>\14<leader>4\1\0\2\vsilent\1\fnoremap\2/:lua require(\"harpoon.ui\").nav_file(3)<cr>\14<leader>3\1\0\2\vsilent\1\fnoremap\2/:lua require(\"harpoon.ui\").nav_file(2)<cr>\14<leader>2\1\0\2\vsilent\1\fnoremap\2/:lua require(\"harpoon.ui\").nav_file(1)<cr>\14<leader>1\1\0\2\vsilent\1\fnoremap\2.:lua require(\"harpoon.ui\").nav_prev()<cr>\14<leader>[\1\0\2\vsilent\1\fnoremap\2.:lua require(\"harpoon.ui\").nav_next()<cr>\14<leader>]\1\0\2\vsilent\1\fnoremap\0027:lua require(\"harpoon.ui\").toggle_quick_menu()<cr>\17<leader><cr>\1\0\2\vsilent\1\fnoremap\0020:lua require(\"harpoon.mark\").add_file()<cr>\14<leader>h\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nž\2\0\0\6\0\14\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\v\0'\4\f\0005\5\r\0B\0\5\1K\0\1\0\1\0\2\vsilent\1\fnoremap\2\19:HopWordBC<cr>\6S\1\0\2\vsilent\1\fnoremap\2\19:HopWordAC<cr>\6s\6n\20nvim_set_keymap\bapi\bvim\1\0\3\22create_hl_autocmd\2\tkeys\28etovxqpdygfblzhckisuran\21uppercase_labels\1\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/aznhe21/hop.nvim"
  },
  ["incsearch.vim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/incsearch.vim",
    url = "https://github.com/haya14busa/incsearch.vim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    needs_bufread = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/opt/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tPATH\fprepend\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
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
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nÐ\2\0\0\v\0\19\0%6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1€K\0\1\0009\2\3\0019\2\4\0029\3\5\0015\5\17\0004\6\6\0009\a\3\0019\a\6\a9\a\a\a>\a\1\0069\a\b\0029\a\t\a5\t\v\0005\n\n\0=\n\f\tB\a\2\2>\a\2\0069\a\a\0029\a\t\a5\t\14\0005\n\r\0=\n\f\tB\a\2\2>\a\3\0069\a\15\2>\a\4\0069\a\16\2>\a\5\6=\6\18\5B\3\2\1K\0\1\0\fsources\1\0\0\vjsonls\vstylua\1\0\0\1\3\0\0\14--no-semi\19--single-quote\15extra_args\1\0\0\1\3\0\0\14--no-semi\19--single-quote\twith\rprettier\veslint\16diagnostics\nsetup\15formatting\rbuiltins\fnull-ls\frequire\npcall\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    after = { "LuaSnip" },
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config/cmp\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config/dap/config\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n•\1\0\0\6\0\b\0\f6\0\0\0'\2\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0'\2\5\0'\3\6\0'\4\a\0004\5\0\0B\0\5\1K\0\1\0':lua require(\"dapui\").toggle()<cr>\15<leader>db\6n\20nvim_set_keymap\bapi\bvim\18config/dap/ui\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18lsp/installer\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15lsp/config\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\21default_register\6+\nsetup\fneoclip\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config/nvimtree\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
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
  sonokai = {
    config = { "\27LJ\2\n8\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\respresso\18sonokai_style\6g\bvim\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
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
  ["sqlite.lua"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/opt/sqlite.lua",
    url = "https://github.com/kkharji/sqlite.lua"
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
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
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
  undotree = {
    config = { "\27LJ\2\n\127\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:UndotreeToggle<cr>\22<leader><leader>u\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-bookmarks"] = {
    config = { "\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25config/vim-bookmarks\frequire\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-bookmarks",
    url = "https://github.com/MattesGroeger/vim-bookmarks"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
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
  ["vim-maximizer"] = {
    config = { "\27LJ\2\nd\0\0\6\0\6\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\1K\0\1\0\25:MaximizerToggle<cr>\14<leader>z\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
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
  ["vim-simple-align"] = {
    config = { "\27LJ\2\në\2\0\0\6\0\r\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\2\vsilent\1\fnoremap\2Q:SimpleAlign  -j right<left><left><left><left><left><left><left><left><left>\aal\1\0\2\vsilent\1\fnoremap\2J:SimpleAlign  -j left<left><left><left><left><left><left><left><left>\aah\1\0\2\vsilent\1\fnoremap\2\18:SimpleAlign \aaa\6v\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-simple-align",
    url = "https://github.com/kg8m/vim-simple-align"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
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
  ["vim-svelte-plugin"] = {
    config = { "\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0'vim_svelte_plugin_load_full_syntax\6g\bvim\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-svelte-plugin",
    url = "https://github.com/leafOfTree/vim-svelte-plugin"
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
  ["vim-tmux-send"] = {
    config = { "\27LJ\2\n„\1\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\vsilent\1\fnoremap\2%:SendKeys 'pnpm\\ test ENTER'<cr>\14<leader>t\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-tmux-send",
    url = "https://github.com/slarwise/vim-tmux-send"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/jojo/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
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
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^sqlite"] = "sqlite.lua"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: vim-fuzzy-stash
time([[Setup for vim-fuzzy-stash]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27config/vim-fuzzy-stash\frequire\0", "setup", "vim-fuzzy-stash")
time([[Setup for vim-fuzzy-stash]], false)
time([[packadd for vim-fuzzy-stash]], true)
vim.cmd [[packadd vim-fuzzy-stash]]
time([[packadd for vim-fuzzy-stash]], false)
-- Setup for: lazygit.nvim
time([[Setup for lazygit.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config/lazygit\frequire\0", "setup", "lazygit.nvim")
time([[Setup for lazygit.nvim]], false)
time([[packadd for lazygit.nvim]], true)
vim.cmd [[packadd lazygit.nvim]]
time([[packadd for lazygit.nvim]], false)
-- Config for: vim-rest-console
time([[Config for vim-rest-console]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28config/vim-rest-console\frequire\0", "config", "vim-rest-console")
time([[Config for vim-rest-console]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18lsp/installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: vim-simple-align
time([[Config for vim-simple-align]], true)
try_loadstring("\27LJ\2\në\2\0\0\6\0\r\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\2\vsilent\1\fnoremap\2Q:SimpleAlign  -j right<left><left><left><left><left><left><left><left><left>\aal\1\0\2\vsilent\1\fnoremap\2J:SimpleAlign  -j left<left><left><left><left><left><left><left><left>\aah\1\0\2\vsilent\1\fnoremap\2\18:SimpleAlign \aaa\6v\20nvim_set_keymap\bapi\bvim\0", "config", "vim-simple-align")
time([[Config for vim-simple-align]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15lsp/config\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: edge
time([[Config for edge]], true)
try_loadstring("\27LJ\2\n1\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\tneon\15edge_style\6g\bvim\0", "config", "edge")
time([[Config for edge]], false)
-- Config for: todo.txt-vim
time([[Config for todo.txt-vim]], true)
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16config/todo\frequire\0", "config", "todo.txt-vim")
time([[Config for todo.txt-vim]], false)
-- Config for: vim-svelte-plugin
time([[Config for vim-svelte-plugin]], true)
try_loadstring("\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0'vim_svelte_plugin_load_full_syntax\6g\bvim\0", "config", "vim-svelte-plugin")
time([[Config for vim-svelte-plugin]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config/treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config/gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\n\127\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:UndotreeToggle<cr>\22<leader><leader>u\6n\20nvim_set_keymap\bapi\bvim\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: gruvbox.nvim
time([[Config for gruvbox.nvim]], true)
try_loadstring("\27LJ\2\nØ\2\0\0\4\0\t\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\0016\0\5\0009\0\6\0'\2\a\0B\0\2\0016\0\5\0009\0\6\0'\2\b\0B\0\2\1K\0\1\0&hi Normal guibg=NONE ctermbg=NONE\24colorscheme gruvbox\bcmd\bvim\14overrides\1\0\r\rcontrast\5\finverse\2\25invert_intend_guides\1\19invert_tabline\1\17invert_signs\1\21invert_selection\1\18strikethrough\2\vitalic\2\tbold\2\17dim_inactive\1\21transparent_mode\1\14underline\2\14undercurl\2\nsetup\fgruvbox\frequire\0", "config", "gruvbox.nvim")
time([[Config for gruvbox.nvim]], false)
-- Config for: vim-bookmarks
time([[Config for vim-bookmarks]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25config/vim-bookmarks\frequire\0", "config", "vim-bookmarks")
time([[Config for vim-bookmarks]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
try_loadstring("\27LJ\2\n÷\6\0\0\6\0\28\0A6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\16\0'\4\17\0005\5\18\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\19\0'\4\20\0005\5\21\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\22\0'\4\23\0005\5\24\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\25\0'\4\26\0005\5\27\0B\0\5\1K\0\1\0\1\0\2\vsilent\1\fnoremap\2/:lua require(\"harpoon.ui\").nav_file(4)<cr>\14<leader>4\1\0\2\vsilent\1\fnoremap\2/:lua require(\"harpoon.ui\").nav_file(3)<cr>\14<leader>3\1\0\2\vsilent\1\fnoremap\2/:lua require(\"harpoon.ui\").nav_file(2)<cr>\14<leader>2\1\0\2\vsilent\1\fnoremap\2/:lua require(\"harpoon.ui\").nav_file(1)<cr>\14<leader>1\1\0\2\vsilent\1\fnoremap\2.:lua require(\"harpoon.ui\").nav_prev()<cr>\14<leader>[\1\0\2\vsilent\1\fnoremap\2.:lua require(\"harpoon.ui\").nav_next()<cr>\14<leader>]\1\0\2\vsilent\1\fnoremap\0027:lua require(\"harpoon.ui\").toggle_quick_menu()<cr>\17<leader><cr>\1\0\2\vsilent\1\fnoremap\0020:lua require(\"harpoon.mark\").add_file()<cr>\14<leader>h\6n\20nvim_set_keymap\bapi\bvim\0", "config", "harpoon")
time([[Config for harpoon]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nž\2\0\0\6\0\14\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\v\0'\4\f\0005\5\r\0B\0\5\1K\0\1\0\1\0\2\vsilent\1\fnoremap\2\19:HopWordBC<cr>\6S\1\0\2\vsilent\1\fnoremap\2\19:HopWordAC<cr>\6s\6n\20nvim_set_keymap\bapi\bvim\1\0\3\22create_hl_autocmd\2\tkeys\28etovxqpdygfblzhckisuran\21uppercase_labels\1\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: vim-tmux-send
time([[Config for vim-tmux-send]], true)
try_loadstring("\27LJ\2\n„\1\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\vsilent\1\fnoremap\2%:SendKeys 'pnpm\\ test ENTER'<cr>\14<leader>t\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-tmux-send")
time([[Config for vim-tmux-send]], false)
-- Config for: caw.vim
time([[Config for caw.vim]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config/caw\frequire\0", "config", "caw.vim")
time([[Config for caw.vim]], false)
-- Config for: sonokai
time([[Config for sonokai]], true)
try_loadstring("\27LJ\2\n8\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\respresso\18sonokai_style\6g\bvim\0", "config", "sonokai")
time([[Config for sonokai]], false)
-- Config for: vimux
time([[Config for vimux]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17config/vimux\frequire\0", "config", "vimux")
time([[Config for vimux]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tPATH\fprepend\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config/nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\21default_register\6+\nsetup\fneoclip\frequire\0", "config", "nvim-neoclip.lua")
time([[Config for nvim-neoclip.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config/telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nÐ\2\0\0\v\0\19\0%6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1€K\0\1\0009\2\3\0019\2\4\0029\3\5\0015\5\17\0004\6\6\0009\a\3\0019\a\6\a9\a\a\a>\a\1\0069\a\b\0029\a\t\a5\t\v\0005\n\n\0=\n\f\tB\a\2\2>\a\2\0069\a\a\0029\a\t\a5\t\14\0005\n\r\0=\n\f\tB\a\2\2>\a\3\0069\a\15\2>\a\4\0069\a\16\2>\a\5\6=\6\18\5B\3\2\1K\0\1\0\fsources\1\0\0\vjsonls\vstylua\1\0\0\1\3\0\0\14--no-semi\19--single-quote\15extra_args\1\0\0\1\3\0\0\14--no-semi\19--single-quote\twith\rprettier\veslint\16diagnostics\nsetup\15formatting\rbuiltins\fnull-ls\frequire\npcall\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: vim-maximizer
time([[Config for vim-maximizer]], true)
try_loadstring("\27LJ\2\nd\0\0\6\0\6\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\1K\0\1\0\25:MaximizerToggle<cr>\14<leader>z\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-maximizer")
time([[Config for vim-maximizer]], false)
-- Config for: cmp-nvim-lsp
time([[Config for cmp-nvim-lsp]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24config/cmp-nvim-lsp\frequire\0", "config", "cmp-nvim-lsp")
time([[Config for cmp-nvim-lsp]], false)
-- Config for: switch.vim
time([[Config for switch.vim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config/switch\frequire\0", "config", "switch.vim")
time([[Config for switch.vim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config/dap/config\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: targets.vim
time([[Config for targets.vim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config/targets\frequire\0", "config", "targets.vim")
time([[Config for targets.vim]], false)
-- Config for: bubbly.nvim
time([[Config for bubbly.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config/bubbly\frequire\0", "config", "bubbly.nvim")
time([[Config for bubbly.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n•\1\0\0\6\0\b\0\f6\0\0\0'\2\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0'\2\5\0'\3\6\0'\4\a\0004\5\0\0B\0\5\1K\0\1\0':lua require(\"dapui\").toggle()<cr>\15<leader>db\6n\20nvim_set_keymap\bapi\bvim\18config/dap/ui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config/cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd LuaSnip ]]

-- Config for: LuaSnip
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config/luasnip\frequire\0", "config", "LuaSnip")

time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
