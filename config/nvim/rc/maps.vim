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

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
