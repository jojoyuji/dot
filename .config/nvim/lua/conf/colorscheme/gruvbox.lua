require("gruvbox").setup({
  contrast = "hard", -- can be "hard", "soft" or empty string
  -- contrast = "",  -- can be "hard", "soft" or empty string
  undercurl = true,
  underline = true,
  bold = true,
  -- italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

vim.cmd([[colorscheme gruvbox]])
vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])


