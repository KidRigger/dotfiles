"NERDTree Configuration
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Lightline Configuration
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Linter Configuration
call neomake#configure#automake('nrwi', 500)
let g:neomake_python_enabled_makers = ['pylint', 'flake8']

" NERDTree Fonts Configuration
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" NCM2 Config

let g:ncm2_pyclang#library_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c

" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>

" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


""""""""""""""""""""""""""""""""""""""""
" General Configuration
""""""""""""""""""""""""""""""""""""""""
let g:python3_host_prog = '/usr/local/bin/python3'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set encoding=utf-8
set splitright
set splitbelow
set tw=79
syntax enable
set cursorline
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent
filetype indent plugin on
let python_highlight_all=1
set number
set ruler 

""""""""""""""""""""""""""""""""""""""""
" Personal Keybindings
""""""""""""""""""""""""""""""""""""""""
let mapleader=','
map <leader>n :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""
" Path settings
""""""""""""""""""""""""""""""""""""""""

set path=$PWD/**
