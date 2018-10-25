execute pathogen#infect()

" Enable syntax highlighting
if !exists("g:syntax_on")
        syntax enable
endif
filetype plugin indent on " Allow plugins (?)
"colorscheme molokai " colorscheme
colo seoul256
set nocompatible

set backspace=indent,eol,start " Backspace over indents and EOL
set shiftwidth=4
set tabstop=4 " Number of visual spaces per tab
set softtabstop=4 " Number of spaces in tab when editing 
set expandtab " Turns tabs into spaces
set autoindent
set smartindent

set number " Show line number
set relativenumber " Show relative line numbers - Great for jumping

set showcmd "show command in bottom bar
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set showmatch " highlight matching parens
set incsearch " search as characters are entered
set hlsearch " highlight matches

set foldenable " enable folding
set foldlevelstart=10 " keep folds closed by default
set foldnestmax=10 " 10 nested fold maximum
set foldmethod=indent " fold based on indent level

highlight Comment cterm=italic

" indenting
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" Airline / Statusline
let g:airline_powerline_fonts = 1 " Allow powerline fonts

" Vim-markdown
set conceallevel=2
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_autowrite = 1

" fzf (installed via Homebrew)
set rtp+=/usr/local/opt/fzf
