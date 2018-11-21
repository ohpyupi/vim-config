call plug#begin()

" nerdtree
Plug 'scrooloose/nerdtree'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowBookmarks=1
let g:NERDTreeWinSize=50

" vim-github-dashboard
Plug 'junegunn/vim-github-dashboard'
let g:github_dashboard = {}

" Atom dark theme
Plug 'https://github.com/gosukiwi/vim-atom-dark.git'

" Vim Airline
Plug 'vim-airline/vim-airline'
let g:airline#extensions#ale#enabled = 1

" Asynchronous Linting Engine
Plug 'w0rp/ale'
let g:ale_fixers = {
\    'javascript': ['prettier'],
\    'typescript': ['eslint', 'prettier', 'tslint'],
\}
let g:ale_fix_on_save = 1

" YOuCompleteMe
" You should complie YouCompleteMe at the plugin's root directory.
" https://github.com/Valloric/YouCompleteMe#mac-os-x
Plug 'Valloric/YouCompleteMe'
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" vim-javascript
Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
" vim-jsx-pretty: highlights jsx.
Plug 'maxmellon/vim-jsx-pretty'
"let g:vim_jsx_pretty_enable_jsx_highlight = 0
"let g:vim_jsx_pretty_colorful_config = 1 " default 0

" vim-node
Plug 'moll/vim-node'

Plug 'dracula/vim', { 'as': 'dracula' }
let g:dracula_italic = 0

Plug 'chr4/nginx.vim'

" typescript-vim
Plug 'leafgarland/typescript-vim'

" editorconfig-vim
Plug 'editorconfig/editorconfig-vim'

" ctrl.vim
Plug 'kien/ctrlp.vim'

" vim-indent-guides
Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 4
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=237
let g:indent_guides_color_change_percent = 10

" dustjs.vim
Plug 'jimmyhchan/dustjs.vim'

call plug#end()

syntax on
set t_Co=256
colorscheme dracula

" Performance wise
" - Reference
" [1] https://vi.stackexchange.com/questions/10495/most-annoying-slow-down-of-a-plain-text-editor
set re=1 "newer version of regex engine has perfomance issue. This will use the older one.
set lazyredraw "Vim engine will redraw as fewer as possible
set ttyfast
set synmaxcol=300 "default = 3000

" Default setting
set nu
set ts=4 sw=4 et
set ai
set paste
se mouse+=a
set backspace=2
set spelllang=en
set clipboard=unnamed
set encoding=utf-8
set fileencoding=utf-8
set encoding=UTF-8
set termguicolors

" Auto-reload when .vimrc changed.
augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source ~/.vimrc
augroup END
