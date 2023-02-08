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
set spell spelllang=en_us
color happy_hacking
]])

vim.cmd[[
set encoding=UTF-8
colorscheme happy_hacking
call plug#begin('C:/Users/emyls/AppData/Local/nvim/pack/plugin/start')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree'
Plug 'KeitaNakamura/tex-conceal.vim'
set conceallevel=1
let g:text_conceal='abdmg'
hi Conceal ctermbg=none
Plug 'vim-airline/vim-airline'
Plug 'glepnir/dashboard-nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'https://github.com/yorickpeterse/happy_hacking.vim'
Plug 'romgrk/barbar.nvim'
Plug 'honza/vim-snippets'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
     ]]

vim.o.filetype=true
vim.o.syntax=true
vim.o.number=true
vim.o.scrolloff=true

vim.opt.list = true
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "eol:↴"
