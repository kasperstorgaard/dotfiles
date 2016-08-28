" --- Plugins --- "
call plug#begin('~/.vim/plugged')

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
Plug 'bendavis78/vim-polymer'
Plug 'karlbright/qfdo.vim'
Plug 'posva/vim-vue'

call plug#end()

" --- Theme --- "
filetype plugin on
syntax enable
syntax on
set t_Co=256
set background=dark
colorscheme Molokai
set showcmd
set cursorline
hi Conceal ctermbg=232 ctermfg=81
" set statusline+=%F
set number
" --- Ruler --- "
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%101v\S', 100)
set colorcolumn=0

" --- Base --- "
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set expandtab
set tabstop=4
set conceallevel=1
set shiftwidth=4
set lazyredraw
set ttyfast
" disable bg color erase
set t_ut=
set wildignore+=*/tmp/*,*/.git/*,*/bower/*,*/bower_components/*,*/node_modules/*,*.min.*

" map ✠ (U+2720) to <S-CR>, as we have shift+enter mapped to send ✠ in iTerm2 "
imap ✠ <S-CR>


" open ag.vim --- "
nnoremap <leader>a :Ag

" --- Filetypes --- "
au BufRead *.html set filetype=html
au BufRead *.es6 set filetype=javascript

" --- CtrlP settings --- "
let g:ctrlp_match_window="bottom,order:ttb"
let g:ctrlp_switch_buffer=0
let g:ctrlp_working_path_mode=0
let g:ctrlp_user_command="ag %s -l --nocolor --hidden -g \"\""

" --- Tmux copy-paste --- "
set clipboard=unnamed

" --- UltiSnips --- "
let g:UltiSnipsExpandTrigger="<S-CR>"
let g:UltiSnipsSnippetDirectories=[$HOME."/.vim/ultisnips"]

" --- Vim-javascript --- "
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_arrow_function = "⇛"

" --- Syntastic --- "
nmap <silent> <F6> :SyntasticToggleMode<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_html_checkers = ["polylint", "eslint"]

let g:syntastic_error_symbol = "❌"
let g:syntastic_style_error_symbol = "⁉️"
let g:syntastic_warning_symbol = "⚠️"
let g:syntastic_style_warning_symbol = "💩"

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" --- vim-jsdoc --- "
let g:jsdoc_enable_es6 = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_return_description = 0
nmap <silent> <C-b> ?\<\(function\\|get\\|set\\|class\)\><CR>:noh<CR><Plug>(jsdoc)
