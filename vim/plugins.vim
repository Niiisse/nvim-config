""" Plugins """
call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'kkharji/lspsaga.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
Plug 'mhinz/vim-startify'
Plug 'sheerun/vim-polyglot'
Plug 'nvim-lua/popup.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
" Plug 'hrsh7th/nvim-cmp'
" Plug 'L3MON4D3/LuaSnip'
" Plug 'saadparwaiz1/cmp_luasnip'
Plug 'airblade/vim-rooter'
Plug 'vim-autoformat/vim-autoformat'
" gccg 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'jiangmiao/auto-pairs'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'overcache/NeoSolarized'
Plug 'tanvirtin/monokai.nvim'
Plug 'edkolev/tmuxline.vim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'LinArcX/telescope-command-palette.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'psliwka/vim-smoothie'
Plug 'justinmk/vim-sneak'
Plug 'ray-x/lsp_signature.nvim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nvim-lualine/lualine.nvim'
" Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'alexghergh/nvim-tmux-navigation'
Plug 'simrat39/symbols-outline.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'ellisonleao/glow.nvim'
Plug 'sainnhe/edge'
Plug 'sainnhe/sonokai'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'wellle/targets.vim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'windwp/nvim-ts-autotag'
Plug 'leafOfTree/vim-matchtag'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'marko-cerovac/material.nvim'
call plug#end()