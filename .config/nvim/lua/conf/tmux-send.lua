vim.api.nvim_set_keymap(
  "n",
  "<leader><leader>t",
  ":SendKeys 'pnpm\\ test ENTER'<cr>",
  { noremap = true, silent = false }
)
