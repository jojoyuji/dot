local bind = vim.api.nvim_set_keymap

bind('n', '<leader>mm', '<Plug>BookmarkToggle', {})
bind('n', '<leader>i', '<Plug>BookmarkAnnotate', {})
bind('n', '<leader>ma', '<Plug>BookmarkShowAll', {})
bind('n', '<leader>mn', '<Plug>BookmarkNext', {})
bind('n', '<leader>mb', '<Plug>BookmarkPrev', {})
bind('n', '<leader>mc', '<Plug>BookmarkClear', {})
bind('n', '<leader>mx', '<Plug>BookmarkClearAll', {})

vim.cmd [[highlight BookmarkSign ctermbg=NONE ctermfg=198]]
vim.cmd [[highlight BookmarkLine ctermbg=198 ctermfg=NONE]]

vim.g.bookmarking_menu = 1
vim.g.bookmark_manage_per_buffer = 0
vim.g.bookmark_highlight_lines = 1
vim.g.bookmark_sign = '♥'
vim.g.bookmark_location_list = 1
vim.g.bookmark_no_default_key_mappings = 1


-- nmap <Leader>mm <Plug>BookmarkToggle
-- nmap <Leader>i <Plug>BookmarkAnnotate
-- nmap <Leader>ma <Plug>BookmarkShowAll
-- nmap <Leader>mn <Plug>BookmarkNext
-- nmap <Leader>mb <Plug>BookmarkPrev
-- nmap <Leader>mc <Plug>BookmarkClear
-- nmap <Leader>mx <Plug>BookmarkClearAll
-- highlight BookmarkSign ctermbg=NONE ctermfg=198
-- highlight BookmarkLine ctermbg=198 ctermfg=NONE
-- let g:bookmarking_menu = 1
-- let g:bookmark_manage_per_buffer = 0
-- let g:bookmark_highlight_lines = 1
-- let g:bookmark_sign = '♥'
-- let g:bookmark_location_list = 1
-- let g:bookmark_no_default_key_mappings = 1
-- 
-- TODO check if mappings below make sense..
-- function! BookmarkMapKeys()
--   nmap <leader>mm :BookmarkToggle<CR>
--   nmap <leader>mi :BookmarkAnnotate<CR>
--   nmap <leader>mn :BookmarkNext<CR>
--   nmap <leader>mp :BookmarkPrev<CR>
--   nmap <leader>ma :BookmarkShowAll<CR>
--   nmap <leader>mc :BookmarkClear<CR>
--   nmap <leader>mx :BookmarkClearAll<CR>
--   nmap <leader>mk :BookmarkMoveUp<CR>
--   nmap <leader>mj :BookmarkMoveDown<CR>
-- endfunction
-- function! BookmarkUnmapKeys()
--   unmap <leader>mm
--   unmap <leader>mi
--   unmap <leader>mn
--   unmap <leader>mp
--   unmap <leader>ma
--   unmap <leader>mc
--   unmap <leader>mx
--   unmap <leader>mk
--   unmap <leader>mj
-- endfunction
-- autocmd BufEnter * :call BookmarkMapKeys()
-- autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()

