set nu
set ts=8 sts=2 et sw=2 tw=80
set nocompatible
set mouse=a
set nowrap
set ignorecase
set smartcase
set incsearch
set hlsearch
set noerrorbells visualbell t_vb=
set background=dark
set undofile
set undodir=~/.vim/undo
set ssop-=options
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'rust-lang/rust.vim'
Plugin 'simnalamburt/vim-mundo'
Plugin 'VundleVim/Vundle.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

filetype plugin indent on

syntax on
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:delimitMate_expand_cr = 1
let g:ycm_always_populate_location_list = 1

function TabToggle()
  if &expandtab
    set shiftwidth=8
    set softtabstop=0
    set noexpandtab
  else
    set shiftwidth=2
    set softtabstop=2
    set expandtab
  endif
endfunction

let mapleader = "\<Space>"
nnoremap <leader><space> :nohlsearch<CR>
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>g :GundoToggle<CR>
nnoremap <leader>l :set list!<CR>
nmap <leader>t mz:execute TabToggle()<CR>'z
nnoremap <leader>] :bnext<CR>
nnoremap <leader>[ :bprevious<CR>
nnoremap <leader>. :tabnext<CR>
nnoremap <leader>, :tabprevious<CR>
nnoremap <leader>t. :tabm +1<CR>
nnoremap <leader>t, :tabm -1<CR>
nnoremap <leader>s :source $MYVIMRC<CR>
nnoremap <leader>c :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>e :lnext<CR>
nnoremap <leader>w :lprevious<CR>
"set pastetoggle=<leader>p
