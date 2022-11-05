return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'editorconfig/editorconfig-vim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- Plug 'sheerun/vim-polyglot'
    -- 'SirVer/ultisnips'
    use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
    use 'saadparwaiz1/cmp_luasnip'
    use 'StanAngeloff/php.vim'
    use 'cakebaker/scss-syntax.vim'
    -- Plug 'cespare/vim-toml'
    -- Plug 'fatih/vim-go'
    use 'itchyny/lightline.vim'
    use 'jiangmiao/auto-pairs'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
    use 'justinmk/vim-dirvish'
    -- Plug 'leafgarland/typescript-vim'
    -- Plug 'lepture/vim-jinja'
    -- Plug 'lumiliet/vim-twig'
    use 'machakann/vim-sandwich'
    use 'mattn/emmet-vim'
    -- 'neoclide/coc.nvim', {'branch': 'release'}
    -- Plug 'yaegassy/coc-phpstan', {'do': 'yarn install --frozen-lockfile'}
    -- Plug 'pangloss/vim-javascript'
    -- Plug 'plasticboy/vim-markdown'
    use 'posva/vim-vue'
    use 'tommcdo/vim-lion'
    use 'tpope/vim-commentary'
    use 'tpope/vim-endwise'
    use 'tpope/vim-eunuch'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-repeat'
    use 'tpope/vim-unimpaired'
    use 'vim-vdebug/vdebug'
    use 'wellle/targets.vim'
    use 'lukas-reineke/indent-blankline.nvim'
    -- Plug 'nvim-lua/popup.nvim'
    -- Plug 'nvim-lua/plenary.nvim'
    -- Plug 'nvim-telescope/telescope.nvim'
    use {
        'lewis6991/gitsigns.nvim',
        tag = 'release',
        config = function()
            require('gitsigns').setup()
        end
    }
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    use 'nvim-tree/nvim-web-devicons'

    use { 'folke/tokyonight.nvim', branch = 'main' }
    use 'croaker/mustang-vim'
    use 'joshdick/onedark.vim'
    use 'romainl/apprentice'
    use 'sjl/badwolf'
    use 'tomasr/molokai'
    use 'vim-scripts/BusyBee'
    use 'twerth/ir_black'
    use 'nanotech/jellybeans.vim'
    use 'erichdongubler/vim-sublime-monokai'
    use 'trusktr/seti.vim'
    use 'arcticicestudio/nord-vim'
    use 'ayu-theme/ayu-vim'
    use 'ajh17/Spacegray.vim'
    use 'cocopon/iceberg.vim'
    use 'chuling/vim-equinusocio-material'
    use { 'humanoid-colors/vim-humanoid-colorscheme', branch = 'main' }
    use 'sainnhe/sonokai'
    use { 'pineapplegiant/spaceduck', branch = 'main' }
    use { 'dracula/vim', as = 'dracula' }
    use { 'EdenEast/nightfox.nvim', branch = 'main' }
    use 'bluz71/vim-moonfly-colors'
    use { 'catppuccin/nvim', branch = 'main' }
end)
