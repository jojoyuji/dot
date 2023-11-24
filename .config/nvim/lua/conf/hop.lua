-- you can configure Hop the way you like here; see :h hop-config
require("hop").setup({
  keys = "etovxqpdygfblzhckisuran",
  create_hl_autocmd = true,
  uppercase_labels = false,
  -- hint_offset = 1,
  -- hint_position = require'hop.hint'.HintPosition.END,
})
vim.api.nvim_set_keymap("n", "f", ":HopWordAC<cr>", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "F", ":HopWordBC<cr>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "t", ":HopChar1<cr>", { noremap = true, silent = false })
vim.api.nvim_set_keymap("o", "t", "v:HopChar1<cr>", { noremap = true, silent = false })

-- vim.api.nvim_set_keymap("n", "s", ":HopLineStart<cr>", { noremap = true, silent = false })
