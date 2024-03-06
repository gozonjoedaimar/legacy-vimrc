let g:mapleader=' '
let g:maplocalleader = ' ' 

call plug#begin()
" Git related plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-sensible'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'liuchengxu/vim-which-key'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
call plug#end()

filetype on
syntax on
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set display=lastline
set encoding=utf-8
set hidden
set history=10000
set laststatus=2
set nojoinspaces
set hlsearch
set incsearch
set listchars=tab:>\ ,trail:-,nbsp:+
set ruler
set showcmd
set smarttab
set nostartofline
set wildmenu
set number 
colorscheme onedark
set updatetime=250
set timeoutlen=300
set breakindent
set ignorecase
set smartcase
set mouse=a

nnoremap <silent> <Space> <Nop>
xnoremap <silent> <Space> <Nop>

nnoremap <expr> <silent> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> <silent> j v:count == 0 ? 'gj' : 'j'

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey '<Space>'<CR>

let g:which_key_map =  {}
let g:which_key_map.s = { 'name' : '[S]earch' }
let g:which_key_map.g = { 'name' : '[G]it' }

" See `:help fzf-vim`
nmap <leader>? :History<CR>
let g:which_key_map['?'] = '[?] Find recently opened files'
nmap <leader><space> :Buffers<CR>
let g:which_key_map[' '] = '[ ] Find existing buffers'
nmap <leader>/ :BLines<CR>
let g:which_key_map['/'] = '[/] Fuzzily search in current buffer'

nmap <leader>sf :Files<CR>
let g:which_key_map.s.f = '[S]earch [F]iles'
nmap <leader>sh :Helptags<CR>
let g:which_key_map.s.h = '[S]earch [H]elp'

nmap <leader>gf :GFiles<CR>
let g:which_key_map.g.f = 'Search [G]it [F]iles'

" [[ Configure completion ]]
" Set Omni Completion
"  See `:help compl-omni` and `:help omnifunc`
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Enter key confirms the current selection when completion is open
inoremap <expr> <CR> pumvisible() ? '<C-y>' : '<CR>'

" <Tab> triggers Omni completion (<C-x><C-o>) in a coding context
let g:SuperTabDefaultCompletionType = "context"

:autocmd InsertEnter * set cursorline
:autocmd InsertLeave * set nocursorline

" The line beneath this is called `modeline`. See `:help modeline`
" vim: ts=2 sts=2 sw=2 et
