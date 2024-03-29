let mapleader = " "

call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'glepnir/dashboard-nvim'
Plug 'akinsho/toggleterm.nvim'

Plug 'ThePrimeagen/refactoring.nvim'

Plug 'APZelos/blamer.nvim'
Plug 'stefandtw/quickfix-reflector.vim'

Plug 'ggandor/lightspeed.nvim'

Plug 'eddyekofo94/gruvbox-flat.nvim'

Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'

Plug 'hoob3rt/lualine.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'

" Coc Installer
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Comments and git
Plug 'b3nj5m1n/kommentary'

" Fuzzy file finder setup
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'

" Tabs
Plug 'romgrk/barbar.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'kyazdani42/nvim-web-devicons'

" Syntax plugins
Plug 'cespare/vim-toml'
Plug 'jose-elias-alvarez/typescript.nvim'

Plug 'windwp/nvim-spectre'

" Multi cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'mbbill/undotree'

" Markdown plugins
Plug 'iamcco/markdown-preview.nvim'
Plug 'plasticboy/vim-markdown'
call plug#end()


set completeopt=menu,menuone,noselect
let g:rustfmt_autosave = 1
let g:vim_markdown_folding_disabled = 1

" Blame configuration
let g:blamer_enabled = 1
let g:blamer_delay = 500

" Highlight selection on yank
au TextYankPost * silent! lua vim.highlight.on_yank()

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

autocmd BufEnter NERD_tree_* | execute 'normal R'
" autocmd BufEnter * call SyncTree()

" KEY MAPPINGS
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <C-k> :cprev<CR>
vnoremap <leader>p "_dP
vnoremap <leader>y "+y
nnoremap <leader>Y gg"yG
nnoremap Y y$
inoremap <C-c> <Esc>

" Save file
nmap <leader>w :w<CR>

" Keeping it all centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Window naviations
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

" Toggle hightlighted search
nnoremap th :set hlsearch!<CR>

" Moving lines open and down visually
nnoremap M :m .+1<CR>==
nnoremap N :m .-2<CR>==
vnoremap M :m '>+1<CR>gv=gv
vnoremap N :m '<-2<CR>gv=gv
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi

" Telescope remapping
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>gf <cmd>Telescope live_grep<cr>
nnoremap <leader>gb <cmd>Telescope buffers<cr>
nnoremap <leader>ght <cmd>Telescope help_tags<cr>

" Move to previous/next
nnoremap <C-q> :BufferPrevious<CR>
nnoremap <C-w> :BufferNext<CR>
nnoremap <C-b> :BufferClose<CR>
nnoremap <leader>q< :BufferMovePrevious<CR>
nnoremap <leader>q> :BufferMoveNext<CR>
" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <key> <C-o>de
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
map <C-t> :NERDTreeToggle<CR>

nmap <leader>f :Format<CR>
" Undo tree toggle
nnoremap <F5> :UndotreeToggle<CR>

" Git
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gc :Git commit<CR>

nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>gpu :Git push<CR>
nnoremap <leader>gpl :Git pull<CR>

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

nnoremap <leader>S <cmd>lua require('spectre').open()<CR>
"search current word
nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s <esc>:lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
