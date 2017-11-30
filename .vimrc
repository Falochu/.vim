"                          Load Pathogen and Plug-ins                          "
call pathogen#infect()
"------------------------------------------------------------------------------"
"                              Basic Options                                   "
set nocompatible          " Turn off vi emulation!
set hidden                " Buffers can be backgrounded
set number                " Turn on line numbers
set noswapfile            " Don't use swap files
set nobackup              " Don't use backup files
set nowb                  " Don't backup when overwriting a file 
set guioptions-=T         " In GUI VIM, don't show the toolbar
"------------------------------------------------------------------------------"
"                            Syntax Highlighting                               "
syntax on                 " Turn on syntax highlighting
filetype on               " Auto detect file type
filetype indent on        " Make auto-indent specific to file type
filetype plugin on        " Load plug-ins to identify additional types
filetype plugin indent on " Make auto-indent specific to file type
au BufNewFile,BufRead *.pcc set filetype=c " Treat .pcc files as C code
set showmatch             " Highlight matching parenthesis/bracket/brace
"------------------------------------------------------------------------------"
"                              Spell Checking                                  "
set spell                 " Turn on spell checking
set spelllang=en          " Set spell checker language to English
"------------------------------------------------------------------------------"
"                            Tab/Space Options                                 "
set autoindent            " Turn on auto-indent
set smartindent           " Auto-indent at start of new code block
set copyindent            " After [ENTER], start with indentation of above line
set expandtab             " When [TAB] is pressed, insert spaces, not \t
set shiftwidth=4          " >>, <<, and auto-indent width (in spaces)
set softtabstop=4         " When [TAB] is pressed, insert 4 spaces
set backspace=indent,eol,start " Make backspace undo full indents, etc.
"------------------------------------------------------------------------------"
"                               Search Options                                 "
set hlsearch              " Highlight all matches while in search mode
set incsearch             " Search incrementally as text is entered
set ignorecase            " Ignore case when searching
set smartcase             " Uppercase letter in search string *is* case-sensitive
"------------------------------------------------------------------------------"
"                               Key Remapping                                  "
" 'j' and 'k' move around by screen lines, not real lines
nmap j gj
nmap k gk
vmap j gj
vmap k gk
" treat ; the same as : when in normal mode (so you don't have to hold shift)
nmap ; :
" "jj" pressed in quick succession counts as escape
imap jj <Esc>
" remap leader plus y,Y, and p to work off system clipboard 
nmap <leader>y "+y
nmap <leader>Y "+Y
nmap <leader>p "+p
" \l runs pdflatex on the current file
nmap <leader>l :!pdflatex % && rm *.log *.aux<CR>
" \c changes in the current parentheses, brackets, or braces

" backslash-space clears the highlighting of the previous search
nmap <silent> <leader><return> :nohlsearch<CR>
" backslash-m removes ^M characters from windows files
nmap <Leader>m mmHmt:%s/<C-V><CR>//ge<CR>'tzt'm
" F1 key opens file explorer tree on the left
nmap <f1> :NERDTreeToggle<CR>
" F2 key opens/switches to MiniBufExplorer window
nmap <f2> :MiniBufExplorer<CR>
" F4 key opens .vimrc (this file) for editing
nmap <f4> :e ~/.vim/.vimrc<CR>
" F5 cats current line with previous, then moves to the next line
let @w='I Aj'
nmap <f5> @w
" F6 puts a blank line after current line, then moves to the next line
nmap <f6> oj
" F12 key re-builds the tag listing for the current project
nmap <f12> :!ctags -R<CR>
" Magic that somehow fixes arrow keys in insert mode when vim is inside tmux 
imap <Esc>[B <Down>
"------------------------------------------------------------------------------"
"                               Color options                                  "
set background=light
set t_Co=256
""let g:solarized_termcolors=256
colorscheme solarized
"------------------------------------------------------------------------------"
"                           Whitespace characters                              "
set listchars=eol:¬,tab:»»,space:·
set list
hi NonText ctermfg=14 ctermbg=15
hi SpecialKey ctermfg=14 ctermbg=15
