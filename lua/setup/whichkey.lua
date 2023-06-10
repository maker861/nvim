vim.cmd(
[[
nnoremap <silent> <leader> :<c-u>WhichKey'<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual'<Space>'<CR>

" Define a separator
let g:which_key_map = {} 
let g:which_key_sep = '→'
set timeoutlen=100
let g:which_key_map.p = {'name' : 'CD'}
let g:which_key_map.c = {'name' : 'Conceal'}
let g:which_key_map.f = {'name' : 'Telescope'}
let g:which_key_map.b = {'name' : 'Buffers'}
let g:which_key_map.w = {'name' :'VimWiki'}
call which_key#register('<Space>','g:which_key_map')

]]
)
