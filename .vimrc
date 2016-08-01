set nocompatible
filetype off
:set tabstop=2 shiftwidth=2 expandtab
set nu


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'b4winckler/vim-objc'
Plugin 'jspahrsummers/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'gkz/vim-ls'
Plugin 'tpope/vim-fugitive'
Plugin 'Shutnik/jshint2.vim'
Plugin 'scrooloose/syntastic'
Plugin 'fsharp/vim-fsharp'

call vundle#end()            " required
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
