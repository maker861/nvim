

--
vim.cmd[[
let g:vimwiki_table_mappings = 0
"for the link thing, go to ftplugin/vimwiki.vim in local plugged 
" disable table mappings
" https://github.com/vimwiki/vimwiki/issues/1093

let g:vimwiki_list = [{'path': 'D:/vimwiki','syntax':'markdown','ext':'.md'}]
let g:vimwiki_listsyms = '✗○◐●✓'
" sets syntax to markdonw instead
" multiple wikis, look at vimwiki_list path, must match 
let wiki_1 = {}
let wiki_1.path = 'D:/vimwiki/wiki_Personal'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'

let wiki_2 = {}
let wiki_2.path = 'D:/vimwiki/wiki_Academic'
let wiki_2.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
let wiki_3 = {}
let wiki_3.path = 'D:/vimwiki/wiki_3'

let g:vimwiki_list = [wiki_1, wiki_2,wiki_3]

let g:vimwiki_ext2syntax = {'.md': 'markdown'}

let g:vimwiki_conceallevel = 2
function! VimwikiLinkHandler(link)
    let link = a:link
    if link =~# '^vfile:'
      let link = link[1:]
    else
      return 0
    endif
    let link_infos = vimwiki#base#resolve_link(link)
    if link_infos.filename == ''
      echomsg 'Vimwiki Error: Unable to resolve link!'
      return 0
    else
      exe 'tabnew ' . fnameescape(link_infos.filename)
      return 1
    endif
endfunction

]]  

--]]
