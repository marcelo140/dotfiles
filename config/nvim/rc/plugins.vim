call plug#begin('~/.local/share/nvim/plugged')

" UI extensions
Plug 'vim-airline/vim-airline'
Plug 'liuchengxu/vim-which-key'
Plug 'preservim/nerdtree'

" Editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'gko/vim-coloresque'
Plug 'luochen1990/rainbow'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Miscellaneous
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'jamessan/vim-gnupg'
Plug 'junegunn/goyo.vim'

" Languages
Plug 'sheerun/vim-polyglot'
" Plug 'tpope/vim-rails'
" Plug 'lervag/vimtex'
call plug#end()

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_y=''

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

let g:rainbow_active = 1

