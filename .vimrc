"Basic Editor
syntax on
autocmd CursorHold * update
set ut=100
set ts=2 sw=2
let g:netrw_banner = 0
set shortmess=I
filetype plugin on

"File Explorer                
let g:netrw_liststyle = 3
let g:netrw_banner = 0

"Emmet
let g:user_emmet_leader_key=','

"fzf
:noremap <c-p> :Files<CR>

"Easymotion
map  <Leader>f <Plug>(easymotion-bd-f)

"Plugins
call plug#begin('~/.vim/plugged')
  Plug 'sheerun/vim-polyglot'
  Plug 'mattn/emmet-vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'ayu-theme/ayu-vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()
