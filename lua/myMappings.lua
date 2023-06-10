vim.cmd([[
nnoremap <space> <Nop>
]])

vim.g.mapleader=" "
vim.g.maplocalleader=" "
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap= true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap= true})

local mapper = vim.api.nvim_set_keymap
local luamapper = vim.keymap.set
local opts1 = {noremap=true, silent=true }
local opts2 = {silent = true , remap = false}
local builtin = require('telescope.builtin')
mapper('n', '+', ':horizontal resize +2<CR>', opts1)
mapper('n','_', ':horizontal resize -2<CR>', opts1)
mapper('n', '-', ':vertical resize -2<CR>', opts1)
mapper('n', '=', ':vertical resize +2<CR>', opts1)

mapper('n','<C-n>', ':NERDTreeToggle<cr>', opts1)

mapper('n', '<C-t>', ':g/\\.*section{/#<CR>', opts1)
-- Conceal
mapper('n', '<leader>c0' , ':set conceallevel=0<Enter>', opts1)

mapper('n', '<leader>c1' , ':set conceallevel=1<Enter>', opts1)

mapper('n', '<leader>c2' , ':set conceallevel=2<Enter>', opts1)

mapper('n', '<leader>cc' , ':set concealcursor=<Enter>', opts1)
-- Telescope
mapper('n', '<leader>ff', ':Telescope find_files<Enter>', opts1)

mapper('n', '<leader>fg', ':Telescope live_grep<Enter>', opts1)

mapper('n', '<leader>fb', ':Telescope buffers<Enter>', opts1)

mapper('n', '<leader>fh', ':Telescope help_tags<Enter>', opts1)

-- Change Directory
mapper('n', '<leader>pd', ':cd D: <Enter>', opts1)
mapper('n','<leader>pc' , ':cd C: <Enter>', opts1)
mapper('n','<leader>pe', ':cd E: <Enter>', opts1)
