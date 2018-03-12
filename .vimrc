execute pathogen#infect()

syntax enable " Enable syntax highlighting
filetype plugin indent on " Allow plugins (?)
colorscheme molokai " colorscheme

set backspace=indent,eol,start " Backspace over indents and EOL
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
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold maximum
set foldmethod=indent " fold based on indent level

autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
