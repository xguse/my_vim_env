source $HOME/.vim/bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin indent on
set grepprg=grep\ -nH\ $*

setlocal spell spelllang=en_us

set formatoptions=l
set lbr
set number
set mouse=a

" set t_Co=256
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme fruity



source $HOME/.vim/bundle/mswin/plugin/mswin.vim


au BufWinLeave * mkview
au BufWinEnter * silent loadview
