"Recursively set the path of the project.
set path=$PWD/**
" Show line nos.
set number

"Default to autoindenting of C like languages
"This is overridden per filetype below
set noautoindent smartindent
"whitespace handling
set shiftround
set nojoinspaces
" no noise. t_vb bit removes any delay also
set visualbell t_vb=
" Show menu with possible tab completions
set wildmenu
" title of the window
set title
" write when switching between files
set autowrite
" tab 
set tabstop=4
" show matching braces
set showmatch
" show matching pattern
set incsearch
" Display an incomplete command in the lower right corner
set showcmd
" syntax highlighting on
syntax on 
" show filename
set modeline
set ls=2

set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Don’t add empty newlines at the end of files
set binary
set noeol

" smart indent
set noautoindent smartindent
" Respect modeline in files
set modeline
set modelines=4
" Highlight current line
set cursorline
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Always show status line
set laststatus=2

" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode

filetype plugin on

let &errorformat="%f:%l:%c: %t%*[^:]:%m,%f:%l: %t%*[^:]:%m," . &errorformat

colors slate
set guifont=Mono\ 13

set expandtab
autocmd FileType c,cc,cpp,icc,cuda
  \ setlocal shiftwidth=2 |
    \ setlocal tabstop=2

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" Automatic commands
if has("autocmd")
    " Enable file type detection
    filetype on
    " Treat .json files as .js
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
    " Treat .md files as Markdown
    autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif


"80 character limit
au BufWinEnter *.c,*.cc,*.cpp,*.icc,*.cu let w:m1=matchadd('Search', '\%<151v.\%>147v', -1) 
au BufWinEnter *.c,*.cc,*.cpp,*.icc,*.cu let w:m2=matchadd('ErrorMsg', '\%>150v.\+', -1) 

" recognize cu files as cuda
au BufNewFile,BufRead *.cu set ft=cuda

" no unknown filetype error 
let NERDShutUp=1
