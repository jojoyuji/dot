let g:configpath = expand('<sfile>:h')

"Performance config
set synmaxcol=120
set nocursorcolumn
set nocursorline
syntax sync minlines=200

"Settings
set nocompatible
filetype plugin indent on
syntax on
syntax enable
set clipboard=unnamed

set ttimeout
set ttimeoutlen=50
set notimeout
let mapleader=" "        " changes leader to space
set foldmethod=indent
set foldnestmax=20
set pastetoggle=<F6>
set shortmess+=filmnrxoOtT
set number               " mostra numero linhas
set numberwidth=2        " margin-left between frame and line number
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup             " dont backup
set noswapfile
set hidden               " u can have an unwritten file to open a new one
set confirm              " kill unwritten buffer
set sm
set mouse-=a "disable mouse
set mousehide "hides the mouse while typing
" set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
set smartindent           "quebra de linha com tab
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo " These commands open folds
set scrolloff=0 " When the page starts to scroll, keep the cursor 8 lines from the top and 8  lines from the bottom
set guicursor=a:blinkon0
set virtualedit=all 
set splitright          " Split new vertical windows right of current window.
set splitbelow          " Split new horizontal windows under current window.

" Indent options

set cindent
set autoindent
set expandtab
set softtabstop=1
set tabstop=1
set shiftwidth=2
set cinkeys=0{,0},0[,0]
set lazyredraw
set nocuc nocul
set magic " For regular expressions turn magic on
set showmatch " Show matching brackets when text indicator is over them
set mat=2 " How many tenths of a second to blink when matching brackets
set noerrorbells " No annoying sound on errors
set t_vb=
set fillchars+=stl:\ ,stlnc:\
set fillchars+=vert:\ "spacing
set backspace=indent,eol,start
set history=100
set showmatch
set nowrap

set autoread " refresh changed files automatically
" Trigger autoread when changing buffers or coming back to vim.
au FocusGained,BufEnter * :silent! !

set ignorecase " stuff for searching
set smartcase
set hlsearch
set gdefault   " assume the /g flag on :s substitutions to replace all matches in a line:
set wildignore=*.swp,*.bak,*.pyc,*.class " autocomplete when opening files. behaves somewhat similarly to bash.
set wildignore+=tags,*.bak,*.swp,*.pyc,*.o,*.obj,*.dll,*.exe,*.gif,*.png,*.jpg,*.jpeg
set wildignore+=*.o,*.obj,*.pyc,*.ds_store,*.db,*.swc
set wildmenu
set wildmode=list:longest,full
set infercase
set completeopt=longest,menu,menuone
set complete+=.  "key completition
set complete+=k
set complete+=b
set complete+=t
set completeopt+=menuone,longest
set completefunc+=emoji#complete
set ofu=syntaxcomplete#complete
set backupdir=/tmp//
set directory=/tmp//
set nobackup
set nowb
set noswapfile
set cmdheight=1 " (sub-optimal) removes many press enter to continue prompts
set list
set listchars=tab:»·,trail:⋅,nbsp:⋅
set nolist
set tags=./tags
set tags+=$home/.vim/tags/python.ctags
set laststatus=2
set copyindent
set shiftround
set foldnestmax=10
set incsearch
set autoread
set undolevels=100
set modeline


"Conditional Settings {{{
if exists('+autochdir')"
  set autochdir
endif
autocmd BufEnter * lcd %:p:h

if has("nvim")
  set noshowcmd
endif

if has("persistent_undo")
  set undodir = "./undodir"
  set undofile
  set history=1000    " remember more commands and search history

  set undolevels=1000 " use many muchos levels of undo
endif

if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
        \	if &omnifunc == "" |
        \		setlocal omnifunc=syntaxcomplete#Complete |
        \	endif
endif

"keep of splits when resized
au VimResized * exe "normal! \<c-w>="

"make sure vim returns to the same line when you reopen a file
au BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \     execute 'normal! g`"zvzz' |
      \ endif

autocmd BufEnter *.md set filetype=markdown

"}}}
"
"Mispelling fix{{{
inoreabbrev lenght length
"}}}

"Load externals{{{1
exe ('so '.g:configpath.'/pluginsrc')
exe ('so '.g:configpath.'/mappingsrc')
"}}}

set background=dark

try
  silent! colorscheme gruvbox8_hard
catch /^Vim\%((\a\+)\)\=:E185/
  " deal with it
endtry

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
else
  let &t_Co=256
  let t_Co=256
endif

if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
        \ if &omnifunc == "" |
        \   setlocal omnifunc=syntaxcomplete#Complete |
        \ endif
endif

" makes vim follow transparency
hi Normal guibg=NONE ctermbg=NONE 
