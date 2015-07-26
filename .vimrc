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
Bundle 'pangloss/vim-javascript'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'gkz/vim-ls'
Bundle 'tpope/vim-fugitive'
Bundle 'Shutnik/jshint2.vim'
Bundle 'scrooloose/syntastic'
Bundle 'fsharp/vim-fsharp'

filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

map <C-n> :NERDTreeToggle<CR>
cmap w!! w !sudo tee > /dev/null %

let s:ocamlmerlin=substitute(system('opam config var share'),'\n$','','''') .  "/ocamlmerlin"
execute "set rtp+=".s:ocamlmerlin."/vim"
execute "set rtp+=".s:ocamlmerlin."/vimbufsync"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
