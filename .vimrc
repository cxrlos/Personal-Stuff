" CARLOS' config file
" Possible thanks to the template provided by the legend ThePrimeAgen
" https://github.com/ThePrimeagen

syntax on
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set backspace=indent,eol,start
set number relativenumber
set nu rnu
set encoding=UTF-8

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'itchyny/lightline.vim'
Plug 'alvan/vim-closetag'
Plug 'vim-latex/vim-latex'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

let g:ycm_global_ycm_extra_conf = '/home/cxrlos/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

" --- LaTeX Goodness ---
" Compile pdflatex
map <leader>p :w <bar> :!pdflatex %<CR>
" Auto env start
map  <C-B>      YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA
map! <C-B> <ESC>YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA
" Wraps LaTeX files 
augroup WrapLineInTeXFile
    autocmd!
    autocmd FileType tex setlocal wrap
augroup END

inoremap (; (<CR>);<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O

" PYTHON run bc I'm lazy
map <leader>r :w <bar> :!python3 %<CR>

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
