" General setup
set number
set relativenumber 
set encoding=UTF-8
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set foldmethod=indent
set foldlevel=7
set autoread
set textwidth=80
set listchars=eol:↲,trail:·,nbsp:␣,tab:→\ 
set list
set undofile
set signcolumn=yes
set completeopt=menu,menuone,noselect
set splitbelow
set splitright
let mapleader=' '

" Plugin setup vim-plugin
call plug#begin()
" Lsp
Plug 'neovim/nvim-lspconfig'
" Autocomplete
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'RRethy/vim-illuminate'
" Color schemes
" Plug 'marko-cerovac/material.nvim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'jonathanfilip/lucius'
Plug 'altercation/vim-colors-solarized'
Plug 'sainnhe/everforest'
" Plug 'kartikp10/noctis.nvim'
" Plug 'rktjmp/lush.nvim'
" Telescope configuration
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Utilities
Plug 'lewis6991/gitsigns.nvim'
Plug 'kylechui/nvim-surround'
Plug 'numToStr/Comment.nvim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'karb94/neoscroll.nvim'
Plug 'will/bgwinch.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'lcheylus/overlength.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
Plug 'rmagatti/goto-preview'
Plug 'simrat39/symbols-outline.nvim'
Plug 'samodostal/image.nvim'
Plug 'kwkarlwang/bufjump.nvim'
Plug 'folke/lua-dev.nvim'
call plug#end()

" Quick change background light/dark
noremap <leader>bg <cmd>let &background = ( &background == 'dark' ? 'light' : 'dark' )<cr><cmd>lua require'overlength'.setup{bg='#e9e8e2'}<cr>
" Copy to system clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+y$
nnoremap <leader><leader>s <cmd>source %<cr>
nnoremap <leader><leader>r <cmd>retab!<cr>
nnoremap <leader><leader>R <cmd>set noexpandtab<cr><cmd>retab!<cr>
nnoremap <leader><leader>t <cmd>ToggleTerm<cr>
" Configuration plugin dependant
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
colorscheme everforest
" only needed in everforest
set termguicolors
noremap <leader>t <cmd>NvimTreeToggle<cr>
" material config
" nnoremap <leader>mm <cmd>lua require('material.functions').toggle_style()<cr>
" nnoremap <leader>me <cmd>lua require('material.functions').toggle_eob()<cr>
" nnoremap <leader>ml <cmd>lua require('material.functions').change_style('lighter')<cr>
" nnoremap <leader>md <cmd>lua require('material.functions').change_style('darker')<cr>
" nnoremap <leader>mp <cmd>lua require('material.functions').change_style('palenight')<cr>
" nnoremap <leader>mo <cmd>lua require('material.functions').change_style('oceanic')<cr>
" nnoremap <leader>mdo <cmd>lua require('material.functions').change_style('deep ocean')<cr>

" Lua stuff
lua require'setup'
