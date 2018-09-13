" show line numbers
set number
set relativenumber

" break long lines at words instead of characters
set linebreak

" enable mouse in vim (usefull to scroll)
set mouse=a

" set tabs to 4 spaces
set shiftwidth=4
set tabstop=4
set expandtab

" highlights current line
set cursorline

" splits in a more intuitive way
set splitright
set splitbelow

colorscheme onedark

" Reloads vim settings
command! Reload source $MYVIMRC

" Rename current file
function! Rename()
  let current = expand('%')
  let new_file = input('New name: ')
  if new_file != current && new_file != ''
    exec ':saveas ' . new_file
    exec ':silent !rm ' . current
    redraw!
  endif
endfunction
