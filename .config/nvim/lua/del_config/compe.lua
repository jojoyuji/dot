local bind = vim.api.nvim_set_keymap
vim.o.completeopt = "menuone,noselect"

--
-- vim.cmd([[imap <silent><expr> <tab> compe#confirm('<CR>')]])
vim.cmd([[imap <tab> compe#confirm('<CR>')]])

-- vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})

-- vim.g.coc_snippet_next = '<TAB>'
-- vim.g.coc_snippet_prev = '<S-TAB>'

-- " let g:coc_snippet_next = '<tab>'
-- nmap <leader>\ :CocCommand snippets.editSnippets<cr>
-- bind('n', '<leader>\\', 'CocCommand snippets.editSnippets<cr>', {} )
-- vmap <tab> <Plug>(coc-snippets-select)
-- bind('v', '<tab>', '<Plug>(coc-snippets-select)', {} )

-- imap <c-j> <c-n>
-- imap <c-k> <c-p>
bind('i', '<c-j>', '<c-n>', {noremap = false})
bind('i', '<c-k>', '<c-p>', {noremap = false})

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'always';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
  };
}

