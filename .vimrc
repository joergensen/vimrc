set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" Vundle
Bundle 'gmarik/vundle'

" repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Chiel92/vim-autoformat'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'rust-lang/rust.vim'
Bundle 'tomasr/molokai'
Bundle 'kien/ctrlp.vim'
Bundle 'klen/python-mode'


" Bundle 'scrooloose/syntastic'
" Bundle 'Valloric/YouCompleteMe'

" non-GitHub repos
Bundle 'git://git.wincent.com/command-t.git'

 " vim.org
Bundle 'a.vim'

call vundle#end()


" After bundles
filetype plugin indent on


" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1

" Formatting - using astyle
let g:formatprg_cpp = "astyle"
let g:formatprg_args_cpp = " --style=allman --indent-namespaces --indent-switches --indent-cases --indent-classes --indent-namespaces --add-brackets --unpad-paren"
noremap <F3> :Autoformat<CR><CR>

" Set colorscheme
colorscheme molokai
let g:rehash256 = 1
let g:molokai_original = 1


syntax enable

if has('gui_running')
    set guioptions-=T           " Remove the toolbar
    set lines=60                " 40 lines of text instead of 24
    set guifont=Courier\ New\ Regular\ 12
endif


set mouse=a                 " Automatically enable mouse usage
set mousehide
set showcmd
set cursorline

set number                          " Line numbers on
set relativenumber

set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set virtualedit=onemore             " Allow for cursor beyond last character
set history=1000                    " Store a ton of history (default is 20)
set spell                           " Spell checking on
set hidden    
set runtimepath^=~/.vim/bundle/ctrlp.vim


set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=4                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current


" Setup statusline
set laststatus=2

set statusline=
set statusline+=%4*\ %04l/%03c\                             " line/column
set statusline+=%2*\ 0x%04.4B\                              " hex value @ cursor
set statusline+=%1*%F\                                      " file path
set statusline+=%m                                          " modified flag
set statusline+=%r                                          " read only flag
set statusline+=%=                                          " spacer
set statusline+=%4*\ %-16{strftime(\"%Y-%m-%d\ %H:%M\")}\   " current time
set statusline+=\ %P                                        " percent through file

" Status line colors
hi User1 guifg=#112605  guibg=#aefe7B
hi User2 guifg=#292b00  guibg=#f4f597
hi User3 guifg=#051d00  guibg=#7dcc7d
hi User4 guifg=#002600  guibg=#67ab6e gui=italic

" Keyboard Shortcuts

let mapleader = ','

map <leader>w :qa<cr>
map <leader>b :FufBuffer<cr>

map <F1> :buffers<CR>:b
nmap <F2> :A<CR>
nmap <F4> :AV<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <F5> :GundoToggle<CR>

map <C-b>c  :tabnew<CR>
map <C-b>n  :tabnext<CR>
map <C-b>p  :tabprevious<CR>
map <C-b>q  :tabclose<cr>

nmap <c-s> :w<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*.d,*.o,*.a,*.svg  

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>


set noswapfile

