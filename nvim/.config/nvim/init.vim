" Plugins {{{

call plug#begin(stdpath('data') . '/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'StanAngeloff/php.vim'
Plug 'cakebaker/scss-syntax.vim'
" Plug 'cespare/vim-toml'
Plug 'editorconfig/editorconfig-vim'
" Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-dirvish'
" Plug 'leafgarland/typescript-vim'
" Plug 'lepture/vim-jinja'
" Plug 'lumiliet/vim-twig'
Plug 'machakann/vim-sandwich'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'yaegassy/coc-phpstan', {'do': 'yarn install --frozen-lockfile'}
" Plug 'pangloss/vim-javascript'
" Plug 'plasticboy/vim-markdown'
Plug 'posva/vim-vue'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'vim-vdebug/vdebug'
Plug 'wellle/targets.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'folke/tokyonight.nvim', {'branch': 'main'}
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
Plug 'cocopon/iceberg.vim'
Plug 'chuling/vim-equinusocio-material'
Plug 'humanoid-colors/vim-humanoid-colorscheme', {'branch': 'main'}
Plug 'sainnhe/sonokai'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'EdenEast/nightfox.nvim', {'branch': 'main'}
Plug 'bluz71/vim-moonfly-colors'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

call plug#end()

" }}}

" Settings {{{

filetype plugin indent on
syntax on

set autoindent
set background=dark
set backspace=indent,eol,start
" set cmdheight=2
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
" nnoremap ,F <cmd>Telescope find_files find_command=fdfind,--type,f,-I<cr>
" nnoremap ,A <cmd>Telescope live_grep<cr>
" nnoremap ,B <cmd>Telescope buffers<cr>
" nnoremap ,H <cmd>Telescope help_tags<cr>
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

nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

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
    \             [ 'cocstatus', 'fugitive', 'modified', 'filename' ] ]
    \ },
\ }

" let $FZF_DEFAULT_COMMAND = 'fd --type f -I'
let $FZF_DEFAULT_COMMAND = 'fd --type f -I -E "*.sql" -E "*.gz"'

let g:vue_pre_processors = 'detect_on_enter'

let g:coc_global_extensions = [
    \ 'coc-phpls',
    \ 'coc-tsserver'
\ ]

if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif

let g:vdebug_options.port = 9003
let g:vdebug_options.debug_file = "~/vdebug.log"
let g:vdebug_options.debug_file_level = "2"
let g:vdebug_options.path_maps = {
    \  '/app' : getcwd(),
    \  '/var/www/html' : getcwd(),
\ }

let g:vdebug_options.break_on_open = 0
let g:vdebug_options.watch_window_style = 'compact'

if !exists('g:vdebug_features')
  let g:vdebug_features = {}
endif

let g:vdebug_features.max_children = 128

" }}}

let g:lightline.colorscheme = 'dracula'
colorscheme dracula

" vim: foldmethod=marker
