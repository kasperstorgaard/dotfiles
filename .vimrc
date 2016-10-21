"--- Plugins ---"
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rking/ag.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'
Plug 'SirVer/ultisnips'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'heavenshell/vim-jsdoc'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'myw/vim-polymer'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Quramy/tsuquyomi'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()

set nocompatible

"--- files ---"
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac

"--- theme ---"
set t_Co=256
set background=dark
colorscheme solarized

set ignorecase
set smartcase

"--- search ---"
" set hlsearch
" set noincsearch
" set nowrapscan
set showmatch


"--- tabs ---"
set expandtab
set tabstop=4
set shiftwidth=4

"--- status ---"
set showcmd
set guifont=Hack:14
set linespace=0

"--- misc ---"
set number
set ambiwidth=double
set foldmethod=marker
set clipboard=unnamed
set spelllang=en
set laststatus=2
set nowritebackup
set ttyfast
set lazyredraw
"set conceallevel=1
"hi Conceal ctermbg=232 ctermfg=81

"--- dirs ---"
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

"--- title --- "
set title
set t_ts=]1;
set t_fs=
let &titleold=''

"--- syntax ---"
filetype plugin on
syntax enable
syntax on
set showcmd
set cursorline

"--- ruler ---"
set ruler
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%101v\S', 100)
set colorcolumn=0

"--- search ---"
set t_ut=
set wildignore+=*/tmp/*,*/.git/*,*/bower/*,*/bower_components/*,*/node_modules/*,*.min.*

" map ✠ (U+2720) to <S-CR>, as we have shift+enter mapped to send ✠ in iTerm2 "
imap ✠ <S-CR>

" open ag.vim --- "
nnoremap <leader>a :Ag

"--- Filetypes ---"
au BufRead *.html set filetype=html
au BufRead *.es6 set filetype=javascript

"--- CtrlP settings ---"
let g:ctrlp_match_window="bottom,order:ttb"
let g:ctrlp_switch_buffer=0
let g:ctrlp_working_path_mode=0
let g:ctrlp_user_command="ag %s -l --nocolor --hidden -g \"\""

"--- Tmux copy-paste ---"
set clipboard=unnamed

"--- UltiSnips ---"
let g:UltiSnipsExpandTrigger="<S-CR>"
let g:UltiSnipsSnippetDirectories=[$HOME."/.vim/ultisnips"]

"--- Syntastic ---"
nmap <silent> <F6> :SyntasticToggleMode<CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_html_checkers = ["polylint", "eslint"]
let g:syntastic_ts_checkers = ["tslint"]

"--- vim-jsdoc ---"
let g:jsdoc_enable_es6 = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_return_description = 0
nmap <silent> <C-b> ?\<\(function\\|get\\|set\\|class\)\><CR>:noh<CR><Plug>(jsdoc)

"--- air-line ---"
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
