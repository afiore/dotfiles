" This is standard pathogen and vim setup
set nocompatible
"call pathogen#infect() 

filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

syntax on
filetype plugin indent on

"set number
set ruler

" Set encoding
set encoding=utf-8

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

set encoding=utf-8

" vim fascism
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"set leader
let mapleader="`"

" quick edit and source .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>


" Whitespace stuff
set nowrap
set tabstop=2
set expandtab
set sw=2 " no of spaces for indenting
set ts=2 " show \t as 2 spaces and treat 2 spaces as \t when deleting, etc..
set list listchars=tab:»·,trail:·



" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.
set nocompatible " Disable vi-compatibility
set laststatus=2 " Always show the statusline
set t_Co=256 " Explicitly tell vim that the terminal has 256 colors

"colourscheme
set background=dark
colorscheme delek

" powerline
if system("uname") ==# "Linux\n"
  let g:Powerline_symbols = 'fancy'
endif

" Switch on spell checking and set filetype to markdown when editing 
" cheat sheet files
function SheetSetup()
  set spell
  set filetype=markdown
endfunction

au BufRead ~/.sheets/* call SheetSetup()

" vimclojure stuff
let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1
let vimclojure#WantNailgun = 1
"let vimclojure#NailgunClient = $HOME . "/.vim/lib/vimclojure-nailgun-client/ng"

" source Vim's plugin bundle
source $HOME/.vim/bundle.vim
