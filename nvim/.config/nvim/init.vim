" Plugins {{{

call plug#begin(stdpath('data') . '/plugged')

Plug 'SirVer/ultisnips'
Plug 'StanAngeloff/php.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'cespare/vim-toml'
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-dirvish'
Plug 'leafgarland/typescript-vim'
Plug 'lepture/vim-jinja'
Plug 'machakann/vim-sandwich'
Plug 'mattn/emmet-vim', { 'for': ['html', 'jinja'] }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'posva/vim-vue'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'wellle/targets.vim'

Plug 'croaker/mustang-vim'
Plug 'joshdick/onedark.vim'
Plug 'romainl/apprentice'
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'
Plug 'vim-scripts/BusyBee'
Plug 'twerth/ir_black'
Plug 'nanotech/jellybeans.vim'
Plug 'erichdongubler/vim-sublime-monokai'
Plug 'trusktr/seti.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'ajh17/Spacegray.vim'

call plug#end()

" }}}

" Settings {{{

filetype plugin indent on
syntax on

set autoindent
set background=dark
set backspace=indent,eol,start
set cmdheight=2
set expandtab
set foldcolumn=0
set foldenable
set foldlevel=99
set foldmethod=syntax
set history=1000
set ignorecase
set incsearch
set infercase
set laststatus=2
set list
set listchars=trail:·,precedes:«,extends:»,tab:▸\ 
set mouse=a
set mousehide
set number
set rtp+=~/.fzf/bin/fzf
set scrolloff=5
set shiftwidth=4
set showcmd
set signcolumn=yes
set smartcase
set softtabstop=4
set tabstop=4
set termguicolors
set textwidth=80
set timeoutlen=700
set ttimeout
set ttimeoutlen=100
set undofile
set updatetime=300
set wildignore+=*.png,*.jpg,*.jpeg,*.gif,*.swp,*.swo
set wildignore+=*.swp,*.swo
set wildignore+=.git
set wildmode=list:longest,full
set wrap

let ayucolor="dark"
colorscheme ayu

" }}}

" Bindings {{{

let mapleader=","
let maplocalleader=","

inoremap ,fn <C-R>=expand("%:t:r:r")<CR>
inoremap jk <Esc>

nnoremap ' `
nnoremap ,A :Ag 
nnoremap ,F :Files<CR>
nnoremap ,G :GFiles<CR>
nnoremap ,ee :drop <C-R>=expand('%:p:h') . '/'<CR>
nnoremap ,eg :drop $MYGVIMRC<CR>
nnoremap ,ev :drop $MYVIMRC<CR>
nnoremap ,fn "=expand("%:t:r:r")<CR>p
nnoremap ,sp :sp <C-R>=expand('%:p:h') . '/'<CR>
nnoremap gV `[V`]
nnoremap j gj
nnoremap k gk
nnoremap q: <Nop>

noremap Y y$

inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" }}}

" Plugins {{{

let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'cocstatus', 'fugitive', 'filename' ] ]
    \ },
\ }

let $FZF_DEFAULT_COMMAND = 'fd --type f -I'

let g:vue_pre_processors = 'detect_on_enter'

" }}}

" vim: foldmethod=marker
