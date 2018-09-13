" stops search highlight
map <Esc> :nohlsearch<CR>

" Replace all ocurrences of the word under cursor
imap <C-s> <Esc>*:%s//
nmap <C-s> *:%s//
vmap <C-s> *#:s//

map <C-n> :NERDTreeToggle<CR>

let mapleader = " "

nmap <leader>w :Windows<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>: :History:<CR>
nmap <leader>f :GFiles<CR>
