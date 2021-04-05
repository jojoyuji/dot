local bind = vim.api.nvim_set_keymap

vim.g.fugitive_pty = 0
vim.g.gitv_commitstep = 100
vim.g.gitv_openhorizontal = 0

vim.cmd [[autocmd FileType fugitive noremap <buffer> q :q<cr>]]

vim.cmd [[highlight diffadded guifg=#00bf00]]
vim.cmd [[highlight diffremoved guifg=#bf0000]]

-- nnoremap <leader>gs :Gstatus
bind('n', '<leader>gs', ':Gstatus', { noremap = true } )
-- nnoremap <leader>gd :Gdiff
bind('n', '<leader>gd', ':Gdiff', { noremap = true } )
-- nnoremap <leader>gb :Gblame
bind('n', '<leader>gb', ':Gblame', { noremap = true } )
-- nnoremap <leader>gr :Gread
bind('n', '<leader>gr', ':Gread', { noremap = true } )
-- nnoremap <leader>gw :Gwrite
bind('n', '<leader>gw', ':Gwrite', { noremap = true } )
-- nnoremap <leader>gp :Dispatch Git push origin HEAD
bind('n', '<leader>gp', ':Dispatch Git push origin HEAD', { noremap = true } )
-- nnoremap <leader>gl :Gpull
bind('n', '<leader>gl', ':Gpull', { noremap = true } )
