call plug#begin('~/.local/share/nvim/plugged')

" UI extensions
Plug 'vim-airline/vim-airline'
Plug 'liuchengxu/vim-which-key'

" Editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'gko/vim-coloresque'
Plug 'luochen1990/rainbow'
Plug 'w0rp/ale'
Plug 'easymotion/vim-easymotion'

" Miscellaneous
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'jamessan/vim-gnupg'

" Languages
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'lervag/vimtex'
Plug 'racer-rust/vim-racer'
Plug 'prettier/vim-prettier', {
            \ 'do': 'yarn install',
            \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

call plug#end()

let g:deoplete#enable_at_startup = 1
set omnifunc=syntaxcomplete#Complete

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_y=''

let g:polyglot_disabled = ['latex']
let g:tex_flavor = 'latex'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" let g:autofmt_autosave = 1
let g:ale_linters = {'rust': ['rls']}

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

let g:rainbow_active = 1

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier
