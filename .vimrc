execute pathogen#infect()
syntax on
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

setlocal spell spelllang=en_us

set formatoptions=l
set lbr
set number
set mouse=a

set t_Co=256
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme fruity



source $VIMRUNTIME/mswin.vim


au BufWinLeave * mkview
au BufWinEnter * silent loadview
