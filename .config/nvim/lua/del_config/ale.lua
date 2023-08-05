local bind = vim.api.nvim_set_keymap

-- vim.cmd([[ let g:ale_fixers = { 'javascript': ['eslint'], 'vue': ['eslint', 'stylelint'], 'markdown': ['prettier'], 'lua': ['lua-format', 'stylua'] } ]])
-- vim.cmd([[ let g:ale_linters = { 'javascript': ['eslint'], 'markdown': ['prettier'] } ]])

vim.g.ale_fixers = {
  svelte = { 'eslint', 'prettier', 'prettier_standard' },
  -- svelte = { 'stylelint', 'eslint', 'tsserver' },
  javascript = { "prettier", "eslint" },
  json = { "fixjson" },
  vue = { "eslint", "stylelint" },
  markdown = { "prettier" },
  lua = { "stylua" },
  html = { "prettier" },
}
vim.g.ale_linters = {
  svelte = { 'eslint', 'prettier', 'prettier_standard' },
  -- svelte = { 'stylelint', 'eslint', 'tsserver' },
  javascript = { "prettier", "eslint" },
  json = { "fixjson" },
  vue = { "eslint", "stylelint" },
  markdown = { "prettier" },
  lua = { "stylua" },
  html = { "prettier" },
}


vim.g.ale_sign_column_always = 1
vim.g.ale_linters_explicit = 1
vim.g.ale_set_loclist = 0
vim.g.ale_set_quickfix = 1
vim.g.ale_lint_on_text_changed = "never"
vim.g.ale_lint_on_enter = 0
vim.g.ale_open_list = 1
vim.g.ale_linters_explicit = 1
-- vim.cmd([[ let g:ale_virtualenv_dir_names = [] ]])

-- Set this if you want to.
-- This can be useful if you are combining ALE with
-- some other plugin which sets quickfix errors, etc.
vim.g.ale_keep_list_window_open = 0
vim.g.ale_list_window_size = 5
-- vim.cmd([[ let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰'] ]])

bind("n", "[[", "<Plug>(ale_previous_wrap)", {})
-- map <silent> [[ <Plug>(ale_previous_wrap)
bind("n", "]]", "<Plug>(ale_next_wrap)", {})
-- map <silent> ]] <Plug>(ale_next_wrap)

-- bind("n", "Q", ":ALEFix<cr>", {})
