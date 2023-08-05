local bind = vim.api.nvim_set_keymap
vim.g.any_jump_disable_default_keybindings = 1

-- nnoremap gd :AnyJump<CR>
bind('n', 'gd', ':AnyJump<cr>', {noremap = true })
