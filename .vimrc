set nocompatible
"vim-plug config
"directory for plugins

call plug#begin('~/.vim/plugged')

"for react synrax highlighting
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

"productivity plugins
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'yggdroot/indentline'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-repeat'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'tmhedberg/matchit'

"fancy plugins
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-dispatch'

"color
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'dracula/vim'
Plug 'KeitaNakamura/neodark.vim'

"just cool stuff
Plug 'ryanss/vim-hackernews'

"initialize plugin system
call plug#end()

if (has("termguicolors"))
set termguicolors
endif

if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  set t_ut=
endif

"mappings
let mapleader=" "
nnoremap <leader>h :nohlsearch<CR>
nnoremap <leader>e :e#<CR>
nnoremap <leader>b :ls<CR>:b<Space>
nnoremap <leader>r :reg<CR>
nnoremap <leader>rtw :%s/\s\+$//e<CR>
nnoremap <leader>y "+yy
nnoremap <leader>p "+p

"make j and k jump rows not lines
nnoremap j gj
nnoremap k gk

"paragraph jumping
nnoremap <S-j> }
nnoremap <S-k> {
vnoremap <S-j> }
vnoremap <S-k> {

"jump to matching pairs easily, with Tab
nnoremap <Tab> %
vnoremap <Tab> %

nnoremap <C-f> :NERDTreeToggle<CR>

"closing a tab or tab
nnoremap <C-d> :close<CR>

nnoremap <down> <Nop>
nnoremap <left> gT
nnoremap <right> gt
nnoremap <up> <Nop>

inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>
inoremap <up> <Nop>

vnoremap <down> <Nop>
vnoremap <left> <Nop>
vnoremap <right> <Nop>
vnoremap <up> <Nop>

nmap go o<ESC>k
nmap gO O<ESC>j

"i really hate that things don't auto-center
nnoremap n nzz
nnoremap N Nzz
nnoremap } }zz
nnoremap { {zz

" move to beginning/end of line
noremap B ^
noremap E $

" remap of tag jumping beacuse of spanish keyboard
nnoremap <c-}> <c-]>

"easy move for splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"autocomplete file name and lines easier
inoremap <C-f> <C-x><C-f>
inoremap <C-l> <C-x><C-l>
inoremap <C-o> <C-x><C-o>

"usual config
set backspace=eol,start,indent
set ttimeoutlen=5
set noshowmode
set ignorecase
set laststatus=2
set diffopt+=vertical
set title
set lazyredraw
set hidden
set nobackup
set noswapfile
set smartcase
colorscheme onedark
set clipboard=unnamedplus
filetype plugin on
filetype indent on
set autoread
set ruler
set showmatch
set showcmd
syntax enable
set splitbelow
set splitright
set scrolloff=999

"spaces
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

"not so usual config
set updatetime=250
"identation
set ai "aunto ident
set si "smart ident

"lines number
set number
set relativenumber

"searching
set incsearch
set hlsearch
set incsearch
set modelines=1
set wildmenu

"ignore stuff in wildmenu
set wildignore+=**/node_modules**

"Plugin related config
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
"this from vim-jsx
"enable jsx syntax highlighing in javascript files
let g:jsx_ext_required = 0
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*jsx"
"This will make the list of non closing tags case sensitive
let g:closetag_emptyTags_caseSensitive = 1
let g:airline_powerline_fonts = 1
let g:ctrlp_map = '<leader>f'

"custom commands
command! Vconfig :find ~/.vimrc
command! Zconfig :find ~/.zshrc
command! Tconfig :find ~/.tmux.conf

" Experimental stuff
" CtrlP auto cache clearing.
function! SetupCtrlP()
  if exists("g:loaded_ctrlp") && g:loaded_ctrlp
    augroup CtrlPExtension
      autocmd!
      autocmd FocusGained  * CtrlPClearCache
      autocmd BufWritePost * CtrlPClearCache
    augroup END
  endif
endfunction
if has("autocmd")
  autocmd VimEnter * :call SetupCtrlP()
endif
