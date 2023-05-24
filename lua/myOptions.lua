vim.cmd([[
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set scrolloff=10
set nobackup
set foldcolumn=0
set signcolumn=no
set winheight=20
set encoding=utf-8
color gruvbox-material
]])

vim.cmd[[
set encoding=UTF-8
colorscheme gruvbox-material
call plug#begin('C:/Users/emyls/AppData/Local/nvim/pack/plugin/start')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree'
Plug 'KeitaNakamura/tex-conceal.vim'
set conceallevel=2
autocmd BufEnter * setlocal concealcursor=
let g:text_conceal='abdmg'
hi Conceal ctermbg=none
Plug 'vim-airline/vim-airline'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'https://github.com/yorickpeterse/happy_hacking.vim'
Plug 'romgrk/barbar.nvim'
Plug 'honza/vim-snippets'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'vim-airline/vim-airline-themes'
Plug 'romgrk/doom-one.vim'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'gruvbox-community/gruvbox'
Plug 'windwp/nvim-autopairs'
Plug 'sainnhe/gruvbox-material'
Plug 'nvimdev/dashboard-nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

autocmd FileType tex setlocal spell spelllang=en_us
]]

vim.o.filetype=true
vim.o.syntax=true
vim.o.number=true
vim.o.scrolloff=true

vim.opt.list = true
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "eol:↴"
