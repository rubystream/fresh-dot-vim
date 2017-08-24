
"necessary on some Linux distros for pathogen to properly load bundles
filetype on
filetype off

"no backup files
set nobackup
"only in case you don't want a backup file while editing
set nowritebackup
"no swap files
set noswapfile

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mycoolsnippets"]
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'moll/vim-node'

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_custom_ignore = 'bower_components\|node_modules\|^.git$\|_site'

Plug 'maksimr/vim-jsbeautify'
Plug 'airblade/vim-gitgutter'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'posva/vim-vue'

Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim'

Plug 'majutsushi/tagbar'
Plug 'craigemery/vim-autotag'

Plug 'kannokanno/previm' " yet another Markdown preview
Plug 'tyru/open-browser.vim' " opens the browser for the above one

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_frontmatter=1
let g:vim_markdown_math=1
let g:markdown_fenced_languages = ['css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml']

Plug 'tomtom/tcomment_vim'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'

Plug 'ternjs/tern_for_vim'

Plug 'KabbAmine/vCoolor.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'thinca/vim-visualstar'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/html5.vim'
Plug 'gorkunov/smartpairs.vim'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/vim-peekaboo'
Plug 'mustache/vim-mustache-handlebars'

" Initialize plugin system
call plug#end()


"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible
"
"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

"add some line space for easy reading
set linespace=4

"disable visual bell
set visualbell t_vb=

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax enable

"add line numbers
set relativenumber
set number
set numberwidth=5

"indent settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set showmatch
set ignorecase
set smartcase
set smarttab
set switchbuf=usetab,newtab
set wildmenu
set nowrap

"hide buffers when not displayed
set hidden

" NERDTreeToggle
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

"map to bufexplorer
nnoremap <leader>b :BufExplorer<cr>

"statusline setup
set statusline=%f       "tail of the filename

"Git
set statusline+=%{fugitive#statusline()}

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set statusline+=%=      "left/right separator

set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'

colorscheme jellybeans
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1

set history=50    " keep 50 lines of command line history
set ruler   " show the cursor position all the time
set showcmd   " display incomplete commands
set incsearch   " do incremental searching

set splitbelow
set splitright

" yank to clipboard
set clipboard^=unnamed
