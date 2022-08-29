local bind = vim.api.nvim_set_keymap

-- smart curly braces enter (indents it properly)
vim.cmd [[ inoremap <expr> <cr> getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O" : "<cr>" ]]

bind("n", "<leader>so", ":Restart<cr>", {noremap = true, silent = false})
bind("n", "<leader>nt", ":e ~/Google Drive/Meu Drive/AOOP/boti/logs<cr>", {noremap = true})

bind("n", "<leader>so", ":Restart<cr>", {noremap = true, silent = false})

-- nnoremap ; :
bind("n", ";", ":", {noremap = true})

-- "removes trailing spaces and indent
vim.cmd([[ nnoremap Q gg=G``zz <esc> :%s/\s\+$//e<esc>:echo ""<esc>``zz ]])

bind("n", "go", ":OpenURL<cr>", {noremap = true})

-- joins selected lines
bind("n", "J", "mzJ`z", {noremap = true})

-- breakline 
vim.cmd([[ nnoremap <cr> i<CR><ESC> ]])

bind("n", "<leader><down>", ':exe "resize " . (winheight(0) * 6/5)<cr>', {noremap = true})
bind("n", "<leader><up>", ':exe "resize " . (winheight(0) * 5/6)<cr>', {noremap = true})

-- To apply a command in a selected block
bind("v", ";", ":", {})

-- for surround plugin
bind("v", "s", "S", {})

-- remove trailing white space
vim.cmd([[nnoremap <leader>W :%s/\s\+$//<cr>:let @/='']])

-- fix for annoying man!
bind("n", "K", "<nop>", {noremap = true})

-- use ,z to 'focus'   the current fold
bind("n", "<leader>z", "zmzvzz", {noremap = true})

-- substitute
bind("n", "<leader>ss", ":%s//<left>", {})
vim.cmd([[ vmap <leader>ss :s/\%V//<left><left> ]])

-- Bubble single lines
bind("n", "<c-a-j>", "]e", {})
bind("n", "<c-a-k>", "[e", {})

-- Bubble multiple lines
bind("v", "<c-a-k>", "]egv", {})
bind("v", "<c-a-j>", "[egv", {})

-- clear last highlight
bind("n", "<leader><leader>", ":silent noh<cr>", {silent = true})
bind("n", "<leader>sf", ":set filetype=", {noremap = true})
bind("n", "<leader>sfj", ":set filetype=javascript", {noremap = true})

bind("", "<leader>q", "<esc>:call FecharBuffer()<cr>", {})

bind("n", "<leader>og", ':!open -a "google chrome"  %<cr>', {})

-- folding
bind("n", "zr", "zR", {noremap = true})
bind("n", "zm", "zM", {noremap = true})

--  no dollar sign at end of line
bind("", "<leader>cd", ":cd %:p:h<cr>", {})

-- maps for jj to act as esc
bind("i", "jj", "<esc>", {noremap = true})
bind("c", "jj", "<c-c>", {noremap = true})

-- force saving files that require root permission
bind("c", "w!!", "%!sudo tee > /dev/null %", {})

-- vv select the content of the cur line without indent
bind("n", "vv", "^vg_", {noremap = true})
bind("n", "Y", "y$", {noremap = true})

-- keep the visual selection after shifting tabs
bind("v", ">", "><CR>gv", {noremap = true})
bind("v", "<", "<<CR>gv", {noremap = true})

-- open a quickfix window for the last search
bind("n", "<leader>co", ":copen", {noremap = true})

-- window management
bind("n", "H", "<c-w>h", {noremap = true})
bind("n", "L", "<c-w>l", {noremap = true})

bind("n", "<leader>sfi", ":set fdm=indent<cr>", {noremap = true})
bind("n", "<leader>sfm", ":set fdm=marker<cr>", {noremap = true})

bind("n", "<leader>]", ":bnext<cr>", {noremap = true})
bind("n", "<leader>[", ":bprev<cr>", {noremap = true})

bind("n", "+", ':exe "resize " . (winheight(0) + 5)<CR>', {noremap = true})
bind("n", "_", ':exe "resize " . (winheight(0) - 5)<CR>', {noremap = true})

bind("n", ")", ':exe "vertical resize " . (winwidth(0) + 5)<CR>', {noremap = true})
bind("n", "(", ':exe "vertical resize " . (winwidth(0) - 5)<CR>', {noremap = true})

bind("n", "<c-d>", "<c-d>zz", {})
bind("n", "<c-e>", "<c-u>zz", {})

-- Super useful! From an idea by Michael Naumann
bind("v", "*", ':call VisualSelection("f")<CR>', {noremap = true})
bind("v", "#", ':call VisualSelection("b")<CR>', {noremap = true})

bind("n", "<leader>vv", ":e $MYVIMRC<cr><c-w>", {})
bind("n", "<leader>vm", ":e ~/.config/nvim/lua/keybinds.lua<cr><c-w>", {})
bind("n", "<leader>vp", ":e ~/.config/nvim/lua/plugins.lua<cr><c-w>", {})
bind("n", "<leader>vo", ":e ~/.config/nvim/lua/settings.lua<cr><c-w>", {})
bind("n", "<leader>vz", ":e $HOME/.zshrc<cr><c-w>", {})

bind("n", "<leader>vu", ":Reload<cr>:PackerUpdate", {noremap = true})
bind("n", "<leader>vi", ":Reload<cr>:PackerInstall<cr>", {noremap = true})
bind("n", "<leader>vc", ":Reload<cr>:PackerClean<cr>", {noremap = true})
bind("n", "<leader>vs", ":Reload<cr>:PackerSync<cr>", {noremap = true})

bind("v", "y", "y:call ClipboardYank()<cr>", {noremap = true})
bind("v", "d", "d:call ClipboardYank()<cr>", {noremap = true})
bind("v", "x", "d:call ClipboardYank()<cr>", {noremap = true})
bind("n", "p", ":call ClipboardPaste()<cr>p", {noremap = true})

-- ctrl+j/ctrl+i to iterate in list
bind("i", "<c-j>", "<c-n>", {})
bind("i", "<c-k>", "<c-p>", {})

bind("c", "<c-j>", "<c-n>", {})
bind("c", "<c-k>", "<c-p>", {})
