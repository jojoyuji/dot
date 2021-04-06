nnoremap ; :
nnoremap \ ;

"removes trailing spaces and indent
nnoremap Q gg=G``zz <esc> :%s/\s\+$//e<esc>:echo ""<esc>``zz
" nnoremap Q gg=G``zz 

nnoremap go :OpenURL<cr>

"joins selected lines
nnoremap J mzJ`z
noremap <c-enter> :silent !open .
nnoremap <d-u> <esc>viw~

"breakline ctrl+shift+j
nnoremap <cr> i<CR><ESC>

nnoremap <silent> <leader><down> :exe "resize " . (winheight(0) * 6/5)<cr>
nnoremap <silent> <leader><up> :exe "resize " . (winheight(0) * 5/6)<cr>

"To apply a command in a selected block
vmap ; :
"for surround plugin
vmap s S

"remove trailing white space
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''

" omnicomplete on ctrl-l
inoremap <c-l> <c-x><c-o>


"fix for annoying man!
noremap K <nop>

"use ,z to 'focus'   the current fold
nnoremap <leader>z zmzvzz

"substitute
nmap <leader><leader>s :%s//<left>
vmap <leader><leader>s :s/\%V//<left><left>
map <leader>ss <esc>:w<cr>

"Bubble single lines
nmap  <c-a-j> ]e
nmap  <c-a-k> [e

"Bubble multiple lines
vmap <c-a-k> [egv
vmap <c-a-j> ]egv

"clear last highlight
nmap <silent> <leader><space> :silent noh<cr>
noremap <leader>sf :set filetype=
noremap <leader>sfj :set filetype=javascript

map <leader>q <esc>:call FecharBuffer()<cr>
function! FecharBuffer()
  let todelbufNr = bufnr("%")
  let newbufNr = bufnr("#")
  if ((newbufNr != -1) && (newbufNr != todelbufNr) && buflisted(newbufNr))
    exe "b".newbufNr
  else
    bnext
  endif

  if (bufnr("%") == todelbufNr)
    new
  endif
  exe "bd".todelbufNr
endfunction


""""""""""""""""""""""""""""""""
"  ScriptNames buffer listing  "
""""""""""""""""""""""""""""""""

"Execute 'cmd' while redirecting output.
" Delete all lines that do not match regex 'filter' (if not empty).
" Delete any blank lines.
" Delete '<whitespace><number>:<whitespace>' from start of each line.
" Display result in a scratch buffer.
function! s:Filter_lines(cmd, filter)
  let save_more = &more
  set nomore
  redir => lines
  silent execute a:cmd
  redir END
  let &more = save_more
  new
  setlocal buftype=nofile bufhidden=hide noswapfile
  put =lines
  g/^\s*$/d
  %s/^\s*\d\+:\s*//e
  if !empty(a:filter)
    execute 'v/' . a:filter . '/d'
  endif
  0
endfunction
command! -nargs=? Scriptnames call s:Filter_lines('scriptnames', <q-args>)

"abre por outros apps
"nmap <leader>oi :!open -a preview.app % <cr>
nmap <leader>og :!open -a "google chrome"  %<cr>

"folding
nnoremap zr zR
nnoremap zm zM 

" no dollar sign at end of line
map <leader>cd :cd %:p:h<cr>
" maps for jj to act as esc
ino jj <esc>
cno jj <c-c>
map <s-h> ^
map <s-l> $

"force saving files that require root permission
cmap w!! %!sudo tee > /dev/null %

"vv select the content of the cur line without indent
nnoremap vv ^vg_
nnoremap Y y$

"keep the visual selection after shifting tabs
vnoremap > ><CR>gv
vnoremap < <<CR>gv

noremap <S-enter> :!

"open a quickfix window for the last search
nnoremap <silent> <leader>/ :execute 'vimgrep /'.@/.'/g %'<cr>:copen<cr>
nnoremap <silent> <leader>co :copen<cr>


nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

"window management
nnoremap H <c-w>h
nnoremap L <c-w>l 


nnoremap <leader>sfi :set fdm=indent<cr>
nnoremap <leader>sfm :set fdm=marker<cr>

noremap <silent> <leader>] :bnext<cr>
noremap <silent> <leader>[ :bprev<cr>

nnoremap <silent> + :exe "resize " . (winheight(0) + 5)<CR>
nnoremap <silent> _ :exe "resize " . (winheight(0) - 5)<CR>

nnoremap <silent> ) :exe "vertical resize " . (winwidth(0) + 5)<CR>
nnoremap <silent> ( :exe "vertical resize " . (winwidth(0) - 5)<CR>

nmap <silent> <c-d> <c-d>zz
nmap <silent> <c-e> <c-u>zz

"Utilities {{{

fun! LoadingMsg(message)
  echo a:message
  sleep 3m
endf

"Improvements FTW {{{1

" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
function! VisualSelection(direction) range
  let l:saved_reg = @"
  execute "normal! vgvy"

  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")

  if a:direction == 'b'
    execute "normal ?" . l:pattern . "^M"
  elseif a:direction == 'gv'
    call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
  elseif a:direction == 'replace'
    call CmdLine("%s" . '/'. l:pattern . '/')
  elseif a:direction == 'f'
    execute "normal /" . l:pattern . "^M"
  endif

  let @/ = l:pattern
  let @" = l:saved_reg
endfunction
"}}}
"Star overer selection highlights it {{{
"AlignReplaceQuotedSpaceslows * on visualmode for searching selected stuff FTW
vnoremap <silent> * :<C-U>
      \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
      \gvy/<C-R><C-R>=substitute(
      \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
      \gV:call setreg('"', old_reg, old_regtype)<CR>

"}}}
"Blink next search! {{{
nnoremap <silent> n   n:call HLNext()<cr>zz
nnoremap <silent> N   N:call HLNext()<cr>zz
" OR ELSE just highlight the match in red...
function! HLNext ()
  let [bufnum, lnum, col, off] = getpos('.')
  let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
  let target_pat = '\c\%#'.@/
  redraw
  exec 'sleep ' . float2nr(120) . 'm'
  redraw
endfunction
map <leader>vv :execute("e $MYVIMRC")<cr><c-w>
map <leader>vmp :execute("e ~/.config/nvim/lua/mappingsrc.vim")<cr><c-w>
map <leader>vp :execute("e ~/.config/nvim/lua/plugins.lua")<cr><c-w>
map <leader>vz :execute("e $HOME/.zshrc")<cr><c-w>

"edit e reload rápido
" nnoremap  <leader>so :call LoadingMsg("Loading vimrc...")<cr>:so $MYVIMRC<cr>
"}}}
"
nnoremap <leader>vu :call LoadingMsg('Updating plugins...')<cr>:Reload<CR>:PackerUpdate
nnoremap <leader>vi :call LoadingMsg('Installing plugins...')<cr>:Reload<cr>:PackerInstall<cr>
nnoremap <leader>vc :call LoadingMsg('Cleaning plugins...')<cr>:Reload<CR>:PackerClean<cr>

function! ClipboardYank()
  call system('pbcopy', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('pbpaste')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
vnoremap <silent> x d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p


" vim: ts=2 fdm=marker fdl=0 ft=vim
