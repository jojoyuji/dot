call plug#begin('~/.config/nvim/bundle')

"Utilities
"
Plug 'pechorin/any-jump.vim'
let g:any_jump_disable_default_keybindings = 1
nnoremap gd :AnyJump<CR>


Plug 'romainl/vim-qf'
Plug 'tommcdo/vim-exchange'

Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'splitjoin.vim'

"Switch                                                                                                         
Plug 'jojoyuji/switch.vim'
nnoremap - :Switch<cr>
let g:switch_custom_definitions =
      \ [
      \   ['addClass', 'removeClass'],
      \   ['GET', 'POST', 'PUT', 'DELETE', 'PATCH'] ,
      \   ['get', 'set'] ,
      \   ['left', 'right', 'center'] ,
      \   ['width', 'height'] ,
      \   ['error', 'success', 'warning'] ,
      \   ['show', 'hide'] ,
      \   ['const', 'let', 'var'] ,
      \   ['after', 'before'] ,
      \   ['padding', 'margin'] ,
      \   ['top', 'bottom'] ,
      \   ['relative', 'absolute', 'fixed', 'static'] ,
      \   ['setTimeout', '$timeout', 'setInterval'] ,
      \   ['$scope', '$rootScope'],
      \   ['$emit', '$broadcast'],
      \   ['console.log', 'alert'],
      \   ['radio', 'checkbox'],
      \   ['min', 'max'],
      \   ['unshift', 'push'],
      \   {
      \     '"\(\k\+\)"':                '''\1''',
      \     '''\(\k\+\)''':              '"\1"\2',
      \   }
      \ ]
Plug 'vim-scripts/Gundo'
Plug 'tpope/vim-unimpaired'
Plug 'caglartoklu/launchassociated.vim'
Plug 'vim-scripts/matchit.zip'
Plug '29decibel/vim-stringify'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/webapi-vim'
"Plug 'mattn/gist-vim'
Plug 'lambdalisue/vim-gista'
"Plug 'lambdalisue/vim-gista-ctrlp'
Plug 'diepm/vim-rest-console' 

let g:vrc_curl_opts = {
      \ '--connect-timeout' : 10,
      \ '-L': '',
      \ '-sS': '',
      \ '-i': '',
      \ '--max-time': 60,
      \ '--ipv4': '',
      \ '-k': '',
      \}

Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'wellle/tmux-complete.vim'
Plug 'christoomey/vim-tmux-navigator'

"Vimux 
Plug 'benmills/vimux'
map <leader>nt :call VimuxRunCommand("clear; npm test")<CR>
map <leader>x :VimuxPromptCommand<CR>


Plug 'junegunn/vim-emoji'
command! Emoji %s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g
" set completefunc=emoji#complete
set omnifunc=emoji#complete


"Complete 

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 
" " let g:coc_node_path = '/usr/local/bin/node'
" let g:coc_global_extensions = [
"     \'coc-css',
"     \'coc-html',
"     \'coc-vetur',
"     \'coc-emmet',
"     \'coc-snippets',
"     \'coc-yank',
"     \'coc-eslint',
"     \'coc-markdownlint'
"     \]
" autocmd FileType scss setl iskeyword+=@-@
" 
" Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}
" " Remap for do codeAction of selected region
" 
" " To make completion works like VSCode
" inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
" let g:coc_snippet_next = '<TAB>'
" let g:coc_snippet_prev = '<S-TAB>'
" 
" " let g:coc_snippet_next = '<tab>'
" nmap <leader>\ :CocCommand snippets.editSnippets<cr>
" vmap <tab> <Plug>(coc-snippets-select)
" 
" 
call plug#end()

nnoremap <leader>vu :call LoadingMsg('Updating plugins...')<cr>:so $MYVIMRC<CR>:PlugUpdate
nnoremap <leader>vi :call LoadingMsg('Installing plugins...')<cr>:Reload<cr>:PlugInstall<cr>
nnoremap <leader>vc :call LoadingMsg('Cleaning plugins...')<cr>:Reload<CR>:PlugClean<cr>

function! CreateCenteredFloatingWindow() abort
  let height = float2nr((&lines - 2) / 1.5)
  let row = float2nr((&lines - height) / 2)
  let width = float2nr(&columns / 1.5)
  let col = float2nr((&columns - width) / 2)
  " Window
  let opts = {
    \ 'relative': 'editor',
    \ 'row': row - 1,
    \ 'col': col - 2,
    \ 'width': width + 4,
    \ 'height': height + 2,
    \ 'style': 'minimal'
    \ }

  let opts.row += 1
  let opts.height -= 2
  let opts.col += 2
  let opts.width -= 4

  autocmd BufEnter,BufNewFile,BufRead todo.txt noremap <buffer> <F12> :close<cr>
  autocmd BufEnter,BufNewFile,BufRead todo.txt noremap <buffer> q :close<cr>
  autocmd BufEnter,BufNewFile,BufRead todo.txt setlocal number

  call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
  " au BufWipeout <buffer> exe 'bw '.s:buf
endfunction

function! FloatingWindowHelp(query) abort
  let l:buf = CreateCenteredFloatingWindow()
  hi Pmenu ctermbg=gray guibg=#333333
  set winhl=Normal:Pmenu
  call nvim_set_current_buf(l:buf)
  execute 'e ' . a:query
  " setlocal filetype=help
  " au BufWipeout <buffer> exe 'bw '.l:buf
endfunction

command! -complete=help -nargs=? Todo call FloatingWindowHelp(<q-args>)
nmap <F12> <esc>:Todo ~/Google Drive/NOTAS/todo.txt<cr>

function Rand()
   let rs =  str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:]) / line('$')
   echo rs
   execute(rs)
endfunction

command! Rand call Rand()

" vim:  ft=vim 
