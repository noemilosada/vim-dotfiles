" vim:fdm=marker
" === Folding structure in vimrc (needs to be the first) === {{{
" }}}

" === Vundle && Plugins === {{{
set nocompatible                                " be iMproved, required
filetype off                                    " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-fugitive'
Plugin 'skammer/vim-css-color'
Plugin 'tomasr/molokai'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'matze/vim-move'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" Install from command line - vim +PluginInstall +qall
" see :h vundle for more details or wiki for FAQ
" }}}

" === Theme and colors === {{{
set t_Co=256                                    " Emulate 256 colors
set background=dark                             " Changing background color
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1                             " Enable molokai colors in terminal
" }}}

" === General Configuration === {{{
syntax on                                       " Turn on syntax highlighting
set autoread                                    " Reload files changed outside vim
set hidden                                      " Easier buffer switching
set title                                       " Set automatic title terminal window
set lazyredraw                                  " Do not redraw while running macros (much faster)
let mapleader=','                               " Set the leader key to comma
highlight Normal guibg=black guifg=white        " Hightlight a text in a diferent color
set hlsearch                                    " Highlight searches
set textwidth=0                                 " Linewidth to endless
set paste                                       " Paste text from other window without unexpected effects
set linebreak                                   " Wrap lines at convenient points
set nuw=5                                       " Increase column number width
set ruler                                       " Show line and column information
set laststatus=2                                " Display status line
set incsearch                                   " Do highlight as you type you search phrase
set ignorecase                                  " Case insensitive searches
set smartcase                                   " Case sensitive searches for capital letters
set backspace=indent,eol,start                  " Repair wired terminal/vim settings
set autoindent                                  " Set auto indentation
set smartindent                                 " Set smart indentation
set smarttab                                    " Set smart tab on indentation
set copyindent                                  " Copy the previous indentation
set shiftround                                  " Multiple shiftwidth when indenting with '<' and '>'
set nostartofline                               " Stop certain movements from always going to the first character of a line
set encoding=utf-8                              " Necessary to show Unicode glyphs
set ttyfast                                     " Send more characters for redraws
set ttymouse=xterm2                             " Set this to the name of your terminal that supports mouse codes. Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set mouse=a                                     " Enable mouse use in all modes
set number                                      " Show line numbers by default
set cursorline                                  " Highlight current line
set listchars=tab:┊\                            " Indent line
let g:indentLine_color_gui = '#A4E57E'          " Indent line color
let g:indentLine_char = '·'                     " Indent line character
set showmode                                    " Always show command or insert mode
set showmatch                                   " Show matching brackets
set formatoptions=tcrqn                         " How automatic formatting is to be done
set whichwrap=b,s,<,>,[,]                       " Allow specific keys that moves the cursor
set tabstop=4 shiftwidth=4 expandtab            " Set tabs to 4 spaces
set invlist                                     " Show hidden chars

" Set indentation for different filetypes
autocmd FileType mustache set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType scss set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Remove window scrollbars in gvim and macvim
set guioptions-=T
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=M

" Auto reload on save
autocmd! bufwritepost .vimrc source %
" }}}

" === History === {{{
set history=1000                                " Remember more commands and search history
set undolevels=1000                             " Use many much levels of undo
" }}}

" === Completition and swap files === {{{
set wildmenu
set noswapfile
set nobackup
set nowb
set wildignore=*.swp,*.bak,*.swo,*.pyc,*.class,*DS_Store*
" }}}

" === Folding Structure ==== {{{
set foldmethod=marker                           " Fold based on indent
set foldnestmax=10                              " Deepest fold is 10 levels
" }}}

" === Remaps === {{{
au VimEnter * nnoremap <silent> <F8> :TlistToggle<cr>
map <C-l> <ESC>:bn<CR>
map <C-h> <ESC>:bp<CR>

" Tab navigation
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Trailing white spaces
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
" }}}

" === PLUGIN: NerdTree === {{{
au VimEnter * nnoremap <lent> <F7> :NERDTreeToggle<cr>
map <F6> :NERDTreeToggle<CR>
let NERDChristmasTree=1                         " Colourful and pretty NERDTree
let NERDTreeMouseMode=3                         " Open directories and files with 1 click
let NERDTreeShowHidden=1                        " Show hidden files by default
let NERDTreeWinPos="right"                      " Right position
autocmd VimEnter * NERDTree                     " Open NerdTree by default
autocmd VimEnter * wincmd p                     " Cursor in window on open Vim
" }}}

" === PLUGIN: NerdTreeTabs === {{{
let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_open_on_console_startup = 1
" }}}

" === PLUGIN: Syntastic - Syntax checking === {{{
let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': [],
            \ 'passive_filetypes': ['html'] }
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phplint', 'phpmd']
let g:syntastic_css_checkers = ['csslint', 'phpcs', 'prettycss', 'recess']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_scss_checkers = ['sass', 'sassc', 'scss_lint']
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_quiet_messages = { "type": "style" }

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_jump=1
let g:syntastic_check_on_open=1
let g:syntastic_auto_loc_list=1
" }}}

" === PLUGIN: Mustache === {{{
let g:mustache_abbreviations = 0
let g:mustache_operators = 1
" }}}

" === PLUGIN: vim-airline === {{{
let g:airline_powerline_fonts = 1
let g:airline_theme='zenburn'
let g:airline#extensions#syntastic#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" }}}

" === PLUGIN: vim-css-color === {{{
let g:cssColorVimDoNotMessMyUpdatetime = 1
" }}}

" === PLUGIN: YouCompleteMe === {{{
let g:ycm_always_populate_location_list = 1
" }}}

" === PLUGIN: Move === {{{
let g:move_key_modifier = 'C'
" }}}

" === PLUGIN: ctrlp === {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/](.git|node_modules|bower)'
" }}}
