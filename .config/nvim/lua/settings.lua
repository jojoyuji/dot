-- vim.cmd("set termguicolors")
local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- " NOT SURE IF ITS OK
-- " set fillchars+=stl:\ ,stlnc:\
-- " set fillchars+=vert:\ "spacing
-- " set shortmess+=filmnrxoOtT

-- global options
o.termguicolors = true

-- set synmaxcol=100
bo.synmaxcol=100

-- set nocursorcolumn
wo.cursorcolumn = false
-- set nocursorline
wo.cursorline = false

-- set clipboard=unnamed
o.clipboard = 'unnamed'
-- set ttimeout
o.ttimeout = false
-- set notimeout
o.timeout = false
-- set foldmethod=indent
wo.foldmethod = 'indent'
-- set pastetoggle=<F6>
o.pastetoggle = '<F6>'
-- set number               " mostra numero linhas
wo.number = true
-- set numberwidth=5        " margin-left between frame and line number
wo.numberwidth=5
-- set visualbell           " don't beep
o.visualbell = true
-- set noerrorbells         " don't beep
o.errorbells = false
-- set noswapfile
bo.swapfile = false
-- set hidden               " u can have an unwritten file to open a new one
o.hidden = true
-- set confirm              " kill unwritten buffer
o.confirm = true
-- set sm
o.showmatch = true
-- set smartindent           "quebra de linha com tab
bo.smartindent = true
-- set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo " These commands open folds
o.foldopen = 'block,insert,jump,mark,percent,quickfix,search,tag,undo'
-- set virtualedit=all 
o.virtualedit='all'
-- set splitright          " Split new vertical windows right of current window.
o.splitright = true
-- set splitbelow          " Split new horizontal windows under current window.
o.splitbelow = true
-- set cindent
bo.cindent = true
-- set expandtab
bo.expandtab = true
-- set softtabstop=1
bo.softtabstop = 1
-- set tabstop=1
bo.tabstop=1
-- set shiftwidth=2
bo.shiftwidth=2
-- set cinkeys=0{,0},0[,0]
bo.cinkeys='0{,0},0[,0]'
-- set lazyredraw
o.lazyredraw = true
-- set showmatch " Show matching brackets when text indicator is over them
o.showmatch = true
-- set mat=2 " How many tenths of a second to blink when matching brackets
o.matchtime = 2
-- set showmatch
o.showmatch = true
-- set nowrap
wo.wrap = false
-- set ignorecase " stuff for searching
o.ignorecase = true
-- set smartcase
o.smartcase = true
-- set gdefault   " assume the /g flag on :s substitutions to replace all matches in a line:
o.gdefault = true
-- set wildignore=*.swp,*.bak,*.pyc,*.class " autocomplete when opening files.
-- set wildignore+=tags,*.bak,*.swp,*.pyc,*.o,*.obj,*.dll,*.exe,*.gif,*.png,*.jpg,*.jpeg
-- set wildignore+=*.o,*.obj,*.pyc,*.ds_store,*.db,*.swc
-- set wildmode=list:longest,full
o.wildmode='list:longest,full'
-- set infercase
bo.infercase = true
-- set completeopt=longest,menu,menuone
-- set completeopt+=menuone,longest
o.completeopt='longest,menu,menuone'
-- set ofu=syntaxcomplete#complete
bo.omnifunc='syntaxcomplete#complete'
-- set nobackup
o.backup = false
-- set nowb
o.writebackup = false
-- set noswapfile
bo.swapfile = false
-- set nolist
wo.list = false
-- set copyindent
bo.copyindent = true
-- set shiftround
o.shiftround = true
-- set modeline
bo.modeline = true
-- set noshowcmd
o.showcmd = false
