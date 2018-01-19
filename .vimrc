set nocompatible

call plug#begin('~/.vim/plugged')

"productivity plugins
Plug 'bling/vim-airline'
Plug 'thaerkh/vim-indentguides'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'stanangeloff/php.vim'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'valloric/MatchTagAlways'
Plug 'w0rp/ale'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-vividchalk'
Plug 'FooSoft/vim-argwrap'
Plug 'junegunn/vim-easy-align'

"fancy plugins
Plug 'airblade/vim-gitgutter'
Plug 'jungomi/vim-mdnquery'
Plug 'tpope/vim-dispatch'

"color
Plug 'shawncplus/skittles_berry'
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'rhysd/vim-color-spring-night'
Plug 'jdkanani/vim-material-theme'
Plug 'kristijanhusak/vim-hybrid-material'

"initialize plugin system
call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

" Disable Background Color Erase (BCE) so that color schemes
" work properly when Vim is used inside tmux and GNU screen.
if &term =~ '256color'
  set t_ut=
endif

set undofile
set undodir=~/.vim/undodir

"usual config
set shortmess=atOI
set backspace=eol,start,indent
set ttimeoutlen=1
set timeoutlen=400
set noshowmode
set laststatus=2
set diffopt+=vertical
set matchpairs+=<:>
set title
set lazyredraw
set hidden
set nobackup
set noswapfile
set smartcase
set infercase "completions are now case aware
colorscheme onedark
set colorcolumn=81
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
set scrolloff=9999
set list listchars=trail:·,eol:¬
set background=dark

"better wrapping
set breakindent
set showbreak=\\\

"spaces
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

"not so usual config
set updatetime=300
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
set wildignore+=**/node_modules**,*.o,*.obj,.git,*.rbc,*.pyc,__pycache__


"mappings
"dude, default leader is a pain in the ass
let mapleader=" "
nnoremap <leader>h :nohlsearch<CR>
nnoremap <leader>e :e#<CR>
nnoremap <leader>r :reg<CR>
"remove trailing whitespace
nnoremap <leader>rtw :%s/\s\+$//e<CR>
nnoremap <leader><left> :vertical resize +10<CR>
nnoremap <leader><right> :vertical resize -10<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>o :only<CR>
nnoremap p ]p
nnoremap P [p
nnoremap <cr> G

" save
nnoremap <leader>s :wa<CR>
" quit
nnoremap <leader>q :qa<CR>

" Argument wrapping
nnoremap <silent> <leader>a :ArgWrap<CR>

" create splits easily
nnoremap <leader>vs :vs<CR>
nnoremap <leader>sp :sp<CR>

" session management
nnoremap <leader>os :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>ds :DeleteSession<CR>

"make j and k jump rows not lines
" nnoremap j gj
" nnoremap k gk
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

"no more ex mode please
nnoremap Q <Nop>
map q: <Nop>

"paragraph jumping
nnoremap <S-j> }
nnoremap <S-k> {
vnoremap <S-j> }
vnoremap <S-k> {


nnoremap <C-f> :NERDTreeToggle<CR>

"closing a tab
nnoremap <C-d> :close<CR>

"move a line with the arrow keys
nnoremap <down> ddp
nnoremap <left> gT
nnoremap <right> gt
nnoremap <up> ddkP

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

nnoremap <C-s> :wa<CR>

"autocomplete file name and lines easier
inoremap <C-f> <C-x><C-f>
inoremap <C-l> <C-x><C-l>
inoremap <C-o> <C-x><C-o>

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"Plugin related config

"MDNquery settings
let g:mdnquery_auto_focus = 1
let g:mdnquery_topics = ['js', 'css', 'html']
let g:mdnquery_vertical = 1

"NERDTree config
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeAutoCenterThreshold = 1
let NERDTreeCascadeSingleChildDir = 0

"enable jsx syntax highlighing in javascript files
let g:jsx_ext_required = 0

let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

let g:ctrlp_map = '<leader>f'

"letting matchtagalways to work inside php files and such
let g:mta_filetypes = { 'html' : 1, 'xhtml' : 1, 'xml' : 1, 'jinja' : 1 ,'php' : 1, 'javascript.jsx' : 1}

"change default emmet shortcut
let g:user_emmet_leader_key='<C-z>'

"delimit mate
let delimitMate_matchpairs = "(:),[:],{:}"
let delimitMate_expand_cr = 1

"Ale configuration
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '?'

" easy align conf
" Start interactive EasyAlign in visual mode (e.g. vipga)
map ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" custom commands
command! Vconfig find ~/.vimrc
command! Zconfig find ~/.zshrc
command! Tconfig find ~/.tmux.conf
command! Iconfig find ~/.i3/config
command! Cconfig find ~/.config/compton.conf
command! Wa wa
command! Vs vs
command! Sp sp
command! Q q
command! Qall qall
command! QA qall
command! Aq qall
command! E e
command! W w
command! Wq wq

" equalize splits when vim is resized
autocmd VimResized * wincmd =

"for quantum to look nicer than default
let g:quantum_black=1
let g:quantum_italics=1

" indetguides ignore filetypes
let g:indentguides_ignorelist = ['txt', 'help']

" git gutter config
let g:gitgutter_max_signs = 500

" Experimental stuff

" open a session on startup
" function! OpenSessionOnStartup()
"   let session = xolox#session#prompt_for_name('open')
"   execute :openSession session
" endfunction

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
  " autocmd VimEnter * :call OpenSessionOnStartup()
endif
