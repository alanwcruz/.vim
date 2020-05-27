call plug#begin('~/.vim/plugged')
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'preservim/nerdtree'
	Plug 'leafgarland/typescript-vim'
call plug#end()

set background=dark
colorscheme solarized8

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
\ 'dir': '\.git$\|\.yardoc\|public$|log\|tmp$',
\ 'file': '\.so$\|\.dat$|\.DS_Store$'
\ }

