set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set shiftwidth=4

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'ayu-theme/ayu-vim'
call plug#end()

set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <C-k> :cprev<CR>
vnoremap <leader>p "_dP
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>Y gg"yG


