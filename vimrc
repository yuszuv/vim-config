call pathogen#infect()
syntax on
filetype plugin indent on

" setting up the gui
set guioptions-=m "no menu
set guioptions-=T "no toolbar
set guioptions-=r "no scrollbars on the right

"set magic modelines, don't know why
set modeline
set modelines=5

set showbreak =☠☠☠☠\ "marking wrapped lines
set cpoptions+=n "use number column
set cpoptions+=$ "insert a dollar sign for 'c' operations

set number "setting line numbers

set cursorline "highlight the current line

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" perform case insensitive searches by default
set ignorecase

" enabling solarized color scheme
syntax enable "keeps priviously defined colors
set background=light
colorscheme solarized

let hostname = system('hostname')
if hostname == "hal9001\n"
	"echo "foobar"
endif
