syntax on
set nu

call plug#begin('~/.vim/plugged')
Plug 'liuchengxu/space-vim-dark'                                                                                               
Plug 'liuchengxu/space-vim-theme'                                                                                              
Plug 'axvr/photon.vim'                                                                                                         
call plug#end()

set splitright
set splitbelow
set foldmethod=marker
set nowrap

let g:netrw_liststyle = 3
let g:netrw_banner = 0
