set ai
set si
set sw=2
"set exrc
set expandtab
set formatoptions+=o
set hidden
"set number
set spell spelllang=en_us
set statusline=
set list
set listchars=tab:>-

call plug#begin('~/.vim/plugged')
Plug 'tmsvg/pear-tree'
Plug 'lervag/vimtex'
"Plug 'vim-latex/vim-latex'
call plug#end()

let g:tex_flavor = "latex"
autocmd Filetype tex inoremap <buffer> $ $$<left>

"put \begin{} \end{} tags around the current word

map  <C-B>      YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA
map! <C-B> <ESC>YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA

set foldlevelstart=99

set autochdir

set clipboard=unnamed

nnoremap space i<space><esc>

let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '--shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
    
    
inoremap <C-C> \textbf{}<left>


