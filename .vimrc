set nocompatible   " Disable vi-compatibility
set t_Co=256
execute pathogen#infect()
colorscheme gruvbox
set background=dark
set guifont=menlo\ for\ powerline:h16
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  "Save on buffer switch
set mouse=a
filetype indent on
filetype plugin on

" With a map leader it's possible to do extra key combinations
" " like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
"  
" " Fast saves
nmap <leader>w :w!<cr>
"  
" Fast quit
nmap <leader>q :q!<cr>
" " Down is really the next line
nnoremap j gj
nnoremap k gk
"  
" "Easy escaping to normal model
 imap jj <esc>

" Mapping redo..
nmap rr :redo<cr>
"  
" "Auto change directory to match current file ,cd
" nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
"  
" "easier window navigation
"  
" nmap <C-h> <C-w>h
" nmap <C-l> <C-w>l
"  
" "Resize vsplit
" nmap <C-v> :vertical resize +5<cr>
" nmap 25 :vertical resize 40<cr>
" nmap 50 <c-w>=
" nmap 75 :vertical resize 120<cr>
"  
nmap <C-b> :NERDTreeToggle<cr>
"  
" "Load the current buffer in Chrome
" nmap ,c :!open -a Google\ Chrome<cr>
"  
" "Show (partial) command in the status line
set showcmd
"  
" " Create split below
nmap :sp :rightbelow sp<cr>
"  
" " Quickly go forward or backward to buffer
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>
"  
" highlight Search cterm=underline
"  
" " Swap files out of the project root
" set backupdir=~/.vim/backup//
" set directory=~/.vim/swap//
"  
" Easy motion stuff
" let g:EasyMotion_leader_key = '<Leader>'
"  
" " Powerline (Fancy thingy at bottom stuff)
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

"let g:Powerline_symbols = 'fancy'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
"Using Airline_powerline_fonts and stuff..
let g:airline_powerline_fonts=1
"  
" autocmd cursorhold * set nohlsearch
" autocmd cursormoved * set hlsearch
"  
" " Remove search results
" command! H let @/=""
"  
" " If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"  
" " Edit todo list for project
" nmap ,todo :e todo.txt<cr>
"  
" Open splits
 nmap vs :vsplit<cr>
 nmap sp :split<cr>
"              
" Create/edit file in the current directory
" nmap :ed :edit %:p:h/
