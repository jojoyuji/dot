-- Add commands for reload and restart
vim.cmd [[ command! Reload lua require("utils").Reload() ]]
vim.cmd [[ command! Restart lua require("utils").Restart() ]]

vim.cmd [[ hi SignColumn ctermbg=NONE guibg=NONE ]]
vim.cmd([[ hi Normal guibg=NONE ctermbg=NONE ]])
vim.cmd [[ autocmd BufWinEnter * lcd %:p:h ]]
-- keep of splits when resized
vim.cmd [[au VimResized * exe "normal! \<c-w>="]]
-- make sure vim returns to the same line when you reopen a file
vim.cmd [[ au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | execute 'normal! g`"zvzz' | endif ]]
