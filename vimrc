set nocompatible

syntax on

call plug#begin('~/.vim/plugged')
Plug 'ycm-core/YouCompleteMe'

call plug#end()

" arst
set mouse=a

" general editor settings
set number relativenumber

" indent new lines to previous indentation
set autoindent

" disable error bell
set noerrorbells visualbell t_vb= 

" set identation to 2
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set nowrap
set smartcase
set ignorecase
set incsearch
set hlsearch
set hidden
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")
" Close suggestion window after one is selected.
" let g:ycm_autoclose_preview_window_after_completion = 1


map <Space> <Leader>
nnoremap <leader>fo :YcmCompleter Format<CR>
nnoremap <leader>d :YcmCompleter GoToDefinition<CR>
nnoremap <leader>c :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>r :YcmCompleter RefactorRename 
nnoremap <leader>fi :YcmCompleter FixIt<CR> 
" Move up and down in autocomplete with <c-j> and <c-k>
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
" clear search highlight
nnoremap <leader><space> :nohlsearch<CR>

nnoremap <leader>] :bnext!<CR>
nnoremap <leader>[ :bprevious!<CR>
