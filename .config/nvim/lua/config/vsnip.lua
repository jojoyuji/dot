local bind = vim.api.nvim_set_keymap
vim.g.vsnip_snippet_dir = '~/.config/nvim/snippets'

vim.cmd([[ nmap <leader>\ :VsnipOpenEdit<cr> ]])
vim.cmd([[ 
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.vue = ['javascript', 'html', 'vue', 'css']
]])

vim.cmd([[ imap <expr> <tab>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<tab>' ]])
vim.cmd([[ smap <expr> <tab>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<tab>' ]])

vim.cmd([[imap <expr> <tab> vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<tab>']])
vim.cmd([[smap <expr> <tab> vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<tab>']])

vim.cmd([[imap <expr> <tab> vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<tab>']])
vim.cmd([[smap <expr> <tab> vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<tab>']])
vim.cmd([[imap <expr> <s-tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<s-tab>']])
vim.cmd([[smap <expr> <s-tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<s-tab>']])


vim.cmd([[ nmap  <tab>  <Plug>(vsnip-cut-text) ]])
vim.cmd([[ xmap  <tab>  <Plug>(vsnip-cut-text) ]])


-- " Jump forward or backward
-- vim.cmd([[ imap <expr> <c-]>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<c-]>' ]])
-- vim.cmd([[ smap <expr> <c-]>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<c-]>' ]])
-- vim.cmd([[ imap <expr> <c-[> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<c-[>' ]])
-- vim.cmd([[ smap <expr> <c-[> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<c-[>' ]])

-- " Select or cut text to use as $TM_SE<c-]>ECTED_TEXT in the next snippet.
-- " See https://github.com/hrsh7th/vim-vsnip/pull/50
-- vim.cmd([[ vmap  <tab>   <Plug>(vsnip-scut-text) ]])
-- vim.cmd([[ xmap  <tab>   <Plug>(vsnip-select-text) ]])
-- vim.cmd([[ nmap  <tab>   <Plug>(vsnip-cut-text) ]])
-- vim.cmd([[ xmap  <tab>   <Plug>(vsnip-cut-text) ]])
