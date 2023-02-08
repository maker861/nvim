vim.cmd([[
nnoremap <space> <Nop>
]])

vim.g.mapleader=" "
vim.g.maplocalleader=" "
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap= true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap= true})

local mapper = vim.api.nvim_set_keymap
local opts1 = {noremap=true, silent=true}
mapper('n', '+', ':horizontal resize +2<CR>', opts1)
mapper('n','_', ':horizontal resize -2<CR>', opts1)
mapper('n', '-', ':vertical resize -2<CR>', opts1)
mapper('n', '=', ':vertical resize +2<CR>', opts1)

mapper('n','<C-n>', ':NERDTreeToggle<cr>', opts1)

mapper('n', '<C-t>', ':g/\\.*section{/#<CR>', opts1)

