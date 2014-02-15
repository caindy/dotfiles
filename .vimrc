set nocompatible
filetype off
:set tabstop=2 shiftwidth=2 expandtab
set nu

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'elixir-lang/vim-elixir'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'b4winckler/vim-objc'
Bundle 'jspahrsummers/vim-gitgutter'

filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

map <C-n> :NERDTreeToggle<CR>
