local bind = vim.api.nvim_set_keymap
vim.cmd("let g:coc_global_extensions = [ 'coc-emmet', 'coc-explorer', 'coc-snippets', 'coc-markdownlint' ] ")


-- bind('i', '<expr> <TAB>', 'pumvisible() ? "\\<C-y>" : "\\<TAB>"', {noremap = true} )
-- " To make completion works like VSCode
vim.cmd([[ inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>" ]])
vim.g.coc_snippet_next = '<TAB>'
vim.g.coc_snippet_prev = '<S-TAB>'

-- " let g:coc_snippet_next = '<tab>'
-- nmap <leader>\ :CocCommand snippets.editSnippets<cr>
bind('n', '<leader>\\', 'CocCommand snippets.editSnippets<cr>', {} )
-- vmap <tab> <Plug>(coc-snippets-select)
bind('v', '<tab>', '<Plug>(coc-snippets-select)', {} )

-- imap <c-j> <c-n>
-- imap <c-k> <c-p>
bind('i', '<c-j>', '<c-n>', {})
bind('i', '<c-k>', '<c-p>', {})
