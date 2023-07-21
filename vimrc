"syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nu
set relativenumber

set splitbelow splitright
"set colorcolumn=80

"remap split navigation
"nnoremap <C-h> <c-w>h
"nnoremap <C-j> <c-w>j
"nnoremap <C-k> <c-w>k
"nnoremap <C-l> <c-w>l

"remap for resize commands
"noremap <silent> <C-Left> :vertical resize -3<CR>
"noremap <silent> <C-Right> :vertical resize +3<CR>
"noremap <silent> <C-Up> :resize +3<CR>
"noremap <silent> <C-Down> :resize -3<CR>


call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
"Plug 'jremmen/vim-ripgrep'
"Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
"Plug 'lyuts/vim-rtags'
"Plug 'kien/ctrlp.vim'
Plug 'valloric/youcompleteme'
"Plug 'mbbill/undotree'
call plug#end()


colorscheme gruvbox
set background=dark
