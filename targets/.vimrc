" This is standard pathogen and vim setup
set nocompatible
"call pathogen#infect() 

filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on

syntax on
set number
set ruler
set cursorline
set cc=80

" Set encoding
set encoding=utf-8

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
"set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

set encoding=utf-8

"set leader
let mapleader="`"

set tags=./tags,tags,../tags

" quick edit and source .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" autoreload vim
"au BufWritePost .vimrc source $MYVIMRC
"

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|target|log|vendor|public)$',
  \ 'file': '\v\.(exe|so|dll|gem)$'
  \ }

" Whitespace stuff
set nowrap
set tabstop=2
set expandtab
set sw=2 " no of spaces for indenting set ts=2 " show \t as 2 spaces and treat 2 spaces as \t when deleting, etc..
set list listchars=tab:»·,trail:·

" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.
set nocompatible " Disable vi-compatibility
set laststatus=2 " Always show the statusline

"colourscheme
set background=dark
colorscheme freshcut

" Switch on spell checking and set filetype to markdown when editing 
" cheat sheet files
function! SheetSetup()
  set spell
  set filetype=markdown
endfunction
au BufRead ~/.sheets/* call SheetSetup()

" Rename current file:
" https://github.com/garybernhardt/dotfiles/blob/master/.vimrc)
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>n :call RenameFile()<cr>

"autodetect file formats
au BufRead,BufNewFile *.pp set filetype=puppet
au BufRead,BufNewFile *.scala set filetype=scala

"let g:syntastic_haskell_checkers=['ghc_mod', 'hlint']
let g:syntastic_ruby_checkers=['mri', 'rubocop']
let g:syntastic_java_checkers=['']

" source Vim's plugin bundle
source $HOME/.vim/bundle.vim

"go to normal mode from insert mode
imap jk <esc>

"abbreviation for binding.pry
abb bp require 'pry'; binding.pry
