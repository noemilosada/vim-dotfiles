" === Folding structure in vimrc (needs to be the first) === {{{
" vim:fdm=marker
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
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe' " Do `./install.py --tern-completer` after installation
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-css-color'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'marijnh/tern_for_vim'
Plugin 'matze/vim-move'
Plugin 'mileszs/ack.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mxw/vim-jsx'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
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
set ttymouse=sgr                                " Set terminal name that supports mouse codes. Codes can be: sgr, xterm, xterm2, netterm, dec, jsbterm, pterm
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
set clipboard=unnamed                           " Copy to the system clipboard
" set relativenumber

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
autocmd bufwritepost $MYVIMRC nested source $MYVIMRC

" Markdown
" au BufNewFile,BufRead *.md setf markdown

" Open each buffer in its own tabpage
" au BufAdd,BufNewFile * nested tab sball
" }}}

" === History === {{{
set history=1000                                " Remember more commands and search history
set undolevels=1000                             " Use many much levels of undo
" }}}

" === Completion and swap files === {{{
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
nnoremap <C-t> :tabnew<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Clipboard
noremap <c-s> <Esc>:Update<CR>
vnoremap <c-s> <Esc>:Update<CR>
inoremap <c-s> <Esc>:Update<CR>
nnoremap <C-c> "+y
vnoremap <C-c> "+y

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
map <F6> :NERDTreeToggle<CR>                    " Use F6 key to toggle NerdTree
"autocmd VimEnter * NERDTree                     " Open NerdTree by default
autocmd VimEnter * wincmd p                     " Cursor in the opened window
let NERDChristmasTree=1                         " Colourful and pretty NERDTree
let NERDTreeMouseMode=3                         " Open directories and files with 1 click
let NERDTreeShowHidden=1                        " Show hidden files by default
let NERDTreeWinPos="left"                       " Left position

hi NERDTreeDir guifg=#465457 ctermfg=38         " Change default Directory colour
"let NERDTreeMapOpenInTab='<ENTER>'
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
let g:airline#extensions#tabline#enabled = 1

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

" === PLUGIN: YouCompleteMe === {{{
let g:ycm_always_populate_location_list = 1 " 0
" }}}

" === P LUGIN: Move === {{{
let g:move_key_modifier = 'C'
" }}}

" === PLUGIN:  ctrlp === {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'a'             " Only the current directory and subdirectories // ra?
let g:ctrlp_custom_ignore = '\v[\/](.git|node_modules|bower|build)'
let g:ctrlp_show_hidden = 1                     " Search hidden files
" }}}

" === PLUGIN: Javascript libraries syntax === {{{
let g:used_javascript_libs = 'underscore,jquery,requirejs,jasmine,handlebars,react,flux,jasmine,chai'
" }}}

" === PLUGIN: JSON === {{{
let g:indentLine_noConcealCursor = 1
let g:vim_json_syntax_conceal = 0
" }}}

" === PLUGIN: REACT === {{{
let g:jsx_ext_required = 0
" }}}
