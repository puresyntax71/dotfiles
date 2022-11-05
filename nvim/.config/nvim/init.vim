lua require('plugins')

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  hightlight = { enable = true },
}
EOF

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
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
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
set rtp+=/opt/homebrew/bin/fzf
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
nnoremap ,ee :drop <C-R>=expand('%:p:h') . '/'<CR>
nnoremap ,sp :sp <C-R>=expand('%:p:h') . '/'<CR>
nnoremap ,eg :drop $MYGVIMRC<CR>
nnoremap ,ev :drop $MYVIMRC<CR>
nnoremap ,fn "=expand("%:t:r:r")<CR>p
nnoremap gV `[V`]
nnoremap j gj
nnoremap k gk
nnoremap q: <Nop>

noremap Y y$

" inoremap <silent><expr> <c-space> coc#refresh()
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
" xmap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap if <Plug>(coc-funcobj-i)
" omap af <Plug>(coc-funcobj-a)

nnoremap <silent> K :call <SID>show_documentation()<CR>

" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction

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

lua <<EOF
    local cmp = require'cmp'

    cmp.setup {
        snippet = {
            expand = function(args)
                require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            end,
        },
        sources = {
            { name = 'nvim_lsp' }
        },
        mapping = cmp.mapping.preset.insert({
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.abort(),
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
    }

    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    require('lspconfig')['intelephense'].setup {
        capabilities = capabilities
    }
EOF

" }}}

let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1
let g:lightline.colorscheme = 'catppuccin'
colorscheme catppuccin

" vim: foldmethod=marker
