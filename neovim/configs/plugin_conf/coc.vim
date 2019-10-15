scriptencoding utf-8

"********************************************************* neoclide/coc.nvim{{{
set completeopt=menuone,noinsert,noselect
" set hidden

function! s:CheckBackSpace() abort
  let l:col = col('.') - 1
  return !l:col || getline('.')[l:col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" :
      \ <SID>CheckBackSpace() ? "\<Tab>" : coc#refresh()
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-reference)
nmap <leader>rn <Plug>(coc-rename)

nmap <leader>fh <Plug>(coc-float-hide)
nmap <leader>fj <Plug>(coc-float-jump)

imap <C-s> <Plug>(coc-snippets-expand)
nmap <C-p> <Plug>(coc-diagnostic-prev)
nmap <C-n> <Plug>(coc-diagnostic-next)

nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <silent> <C-d> <Plug>(coc-cursors-word)
xmap <silent> <C-d> <Plug>(coc-cursors-range)

if get(g:, 'colors_name', '') ==# 'neuclr'
  highlight link CocInfoSign NeuBlue
  highlight link CocHintSign NeuGreen
  highlight link CocWarningSign NeuOrange
  highlight link CocErrorSign NeuRed
endif

call coc#config('snippets.userSnippetsDirectory', $VIMCONFIG.'/configs/plugin_conf/coc-snippets')
"}}}
