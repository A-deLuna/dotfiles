set nocompatible

set hidden
set term=screen-256color

syntax on
colorscheme badwolf

call plug#begin('~/.vim/plugged')
" Plug 'ycm-core/YouCompleteMe'

"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }
"
" Plug 'junegunn/fzf'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tikhomirov/vim-glsl'
call plug#end()

" let g:LanguageClient_serverCommands = {
" \ 'cpp': ['/home/tony/cquery/build/release/bin/cquery', 
" \ '--log-file=/tmp/cq.log', 
" \ '--init={"cacheDirectory":"/tmp/cquery/"}']                                                                                                                                                                              
" \ }

" show error messages in 2 lines for better readability
set cmdheight=2

" write swipe file after 300ms (default is 4000) lets clangd run faster
set updatetime=300

" avoid some vim messages when completing
set shortmess+=c
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
" " Let clangd fully control code completion
" let g:ycm_clangd_uses_ycmd_caching = 0
" " Use installed clangd, not YCM-bundled clangd which doesn't get updates.
" let g:ycm_clangd_binary_path = exepath("clangd-10")
" " allow clangd to index, allows for gotodefinition
" let g:ycm_clangd_args = ["-background-index",'-log=verbose']
" Close suggestion window after one is selected.
" let g:ycm_autoclose_preview_window_after_completion = 1

" Needed for window subsystem terminal to reveive mouse
" input events
set ttymouse=sgr

map <Space> <Leader>
" ycm 
nmap <leader>fo <Plug>(coc-format-selected)
"nnoremap <leader>d :YcmCompleter GoToDefinition<CR>
nmap <leader>fi <Plug>(coc-fix-current)
nmap <leader>d <Plug>(coc-definition)
nmap <leader>i <Plug>(coc-implementation)
nmap <leader>ref <Plug>(coc-references)
nmap <leader>r <Plug>(coc-rename)



"" Move up and down in autocomplete with <c-j> and <c-k>
"inoremap <expr> <c-j> ("\<C-n>")
"inoremap <expr> <c-k> ("\<C-p>")

" clear search highlight
nnoremap <leader><space> :nohlsearch<CR>

nnoremap <leader>] :bnext!<CR>
nnoremap <leader>[ :bprevious!<CR>

"close buffer without closing the window
nnoremap <leader>bd :bp\|bd #<CR>
