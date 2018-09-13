call plug#begin('~/.local/share/nvim/plugged')

" UI extensions
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'

" Miscellaneous
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim'

" Editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'racer-rust/vim-racer'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'w0rp/ale'

" Languages
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'lervag/vimtex'

call plug#end()

let g:deoplete#enable_at_startup = 1
set omnifunc=syntaxcomplete#Complete

let g:polyglot_disabled = ['latex']

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_y=''

let g:tex_flavor = 'latex'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:autofmt_autosave = 1
let g:ale_linters = {'rust': ['rls']}
