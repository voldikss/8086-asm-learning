" vim:fdm=marker:fmr=[[[,]]]
" ========================================================================
" Description: vimrc
" Author: voldikss
" GitHub: https://github.com/voldikss/dotfiles
" Todo:
" ========================================================================

filetype plugin indent on
autocmd BufNewFile,BufRead *.masm  setfiletype masm

syntax on
source c:\util\VIM73\syntax\masm.vim
source c:\util\VIM73\colors\industry.vim

" General: [[[1
set backspace=eol,start,indent
" file & directory & format [[[2
set history=2000
set updatetime=100
set autoread
set autowrite
set nobackup
set noswapfile
set nowritebackup
set isfname-==
set encoding=utf-8
set fileencodings=utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformats=unix,dos,mac
set nrformats=
set hidden
set formatoptions+=m
set formatoptions+=B
set nospell
" style [[[2
set guicursor=
set title
set ruler
set cursorline
set laststatus=2
set showtabline=2
set guioptions-=e
set scrolloff=6
" match & search [[[2
set showmatch
set matchtime=0
set hlsearch
set incsearch
set ignorecase
set smartcase
" tab & space & indent [[[2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set shiftround
set relativenumber number
set foldlevel=99
set foldmethod=indent
set conceallevel=0
set autoindent
set smartindent
set cpoptions+=I
" Keymap: [[[1
" LeaderKey: [[[2
let mapleader   = ';'
let g:mapleader = ';'
inoremap <C-c> <Esc>
inoremap <C-[> <Esc>
" General: [[[2
noremap  H  ^
noremap  L  $
"cannot use noremap
nnoremap     M  %
vnoremap     M  %
noremap  U  <C-R>
noremap  '  `
vnoremap <  <gv
vnoremap >  >gv
" Search: [[[2
" use set shortmess-=S to display searchindex
nnoremap <silent> n  nzz
nnoremap <silent> N  Nzz
nnoremap <silent> *  *zz
nnoremap <silent> #  #zz
" TextObject: [[[2
" whole buffer
xnoremap ie GoggV
onoremap ie :normal vie<CR>
" line
xnoremap il g_o^
onoremap il :normal vil<CR>
xnoremap al $o0
onoremap al :normal val<CR>
" argument
xmap ia afovvi)
omap ia :normal vag<CR>
" BufferOperation: [[[2
nnoremap <silent> <C-h>     :bprev<CR>
nnoremap <silent> <C-l>     :bnext<CR>
noremap  <silent> <Leader>d :bdelete!<CR>
" TabOperation: [[[2
noremap  <silent> <C-t> <Esc>:tabnew<CR>
" InsertMode: move [[[2
inoremap <C-k> <Up>
inoremap <C-j> <Down>
snoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-b> <Esc>bi
inoremap <C-f> <Esc>ea
inoremap <C-a> <Esc>I
inoremap <C-e> <End>
inoremap <C-o> <End><CR>
inoremap <M-o> <Esc>O
inoremap <C-d> <Esc>ddi
" SaveAndQuit: [[[2
nnoremap <silent> <Leader>w :wa<CR>
nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>Q :qa!<CR>
nnoremap <silent> Q         :qa!<CR>
" QuickMessage: [[[2
nnoremap <silent> <Leader>m :messages<CR>
" CommandMode: [[[2
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <S-Left>
cnoremap <C-f> <S-Right>
