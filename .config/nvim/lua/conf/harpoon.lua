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
