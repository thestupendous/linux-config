"this config file has been modified suitably for added golng support
"  it has code completion and autoformatting for golang
"  through the use of plugins
syntax on
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
set rnu

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

"for IDE mode, for programming					- (for best experience,
"												terminal font size should be 8
"												for screen resolution of
"												1080p)
let @e = ':Lex60<lv:termkc25<hh'


"go-lang commands   - leader key is backslash key
"keymaps guide - https://medium.com/pragmatic-programmers/configuring-vim-to-develop-go-programs-e839641da4ac
au FileType go nmap <leader>r <Plug>(go-run) 
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage-toggle)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
" Navigation commands
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
" Use new vim 8.2 popup windows for Go Doc
let g:go_doc_popup_window = 1


"i've been using 'vim-plug' as plugin manager for vim
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-utils/vim-man'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Chiel92/vim-autoformat'
"Plug 'valloric/youcompleteme'
call plug#end()


"  below line will give error unless I manually download and save colorscheme file
"  'gruvbox.vim' from here - https://github.com/morhetz/gruvbox/tree/master/colors
"   and move to /usr/share/vim/vim*/colors/ directory
colorscheme gruvbox
set background=dark
