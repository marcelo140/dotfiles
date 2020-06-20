" " stops search highlight
map <Esc> :nohlsearch<CR>
" " Replace all ocurrences of the word under cursor
imap <C-s> <Esc>*:%s//
nmap <C-s> *:%s//
vmap <C-s> *#:s//

nmap <silent> dsa ds}dF\

let mapleader = " "

nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fc :Commits<CR>
nnoremap <leader>fd :BTags<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>fu :GFiles?<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fl :Locate 
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>fr :Rg 
nnoremap <leader>fs :Snippets<CR>
nnoremap <leader>ft :Tags<CR>
nnoremap <leader>fx :Filetypes<CR>
nnoremap <leader>fn :Commands<CR>

nmap <leader>tr :RainbowToggle<CR>
nmap <leader>tc :set cursorcolumn!<CR>
nmap <leader>tn :NERDTreeToggle<CR>

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

nnoremap <silent> K :call <SID>show_documentation()<CR>

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
