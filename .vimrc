syntax on 
set listchars=tab:»\ ,trail:␣,extends:▶,precedes:◀

filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green

"colorscheme jellybeans 
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

call plug#begin('~/.vim/plugged/')
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim' 
Plug 'morhetz/gruvbox'

" ALE
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_format = '[%severity%] [%linter%] %s'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_fix_on_save = 1
let g:ale_keep_list_window_open = 0
let g:ale_open_list = 0
let g:ale_python_mypy_enabled = 0
let g:ale_python_mypy_options = "--ignore-missing-imports"
let g:ale_set_balloon= 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '#'
let g:ale_sign_warning = '>>'

call plug#end()
