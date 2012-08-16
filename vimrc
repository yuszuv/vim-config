call pathogen#infect()
set nocompatible "it's vim!
syntax on
filetype plugin indent on
set encoding=utf-8


" setting up the gui
set guioptions-=m "no menu
set guioptions-=T "no toolbar
set guioptions-=r "no scrollbars on the right
set guioptions-=R
set guioptions-=l "no scrollbars on the left
set guioptions-=L

set laststatus=2 "always show a status line

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

" keep 3 lines above and below when scrolling
set scrolloff=3

" enabling solarized color scheme
syntax enable "keeps priviously defined colors
set background=light
colorscheme solarized

" visual selection on tabbing
set wildmenu
set wildmode=list:longest,full
" don't select via left/right arrows
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

let hostname = system('hostname')
if hostname == "hal9001\n"
	"echo "foobar"
else
	" mapping usefull and badly typable commands
	map öö <C-[>
	map ää <C-]>
	map <k7> <C-[>
	map <k8> <C-]>
	let g:solarized_contrast="high"    "default value is normal
endif


" searching
"""""""""""
set hlsearch    " highlight matches
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter


" mappings
""""""""""""

map <silent> <F2> :NERDTreeToggle<CR>

" normal mode mappings
nmap ö <C-[>
nmap ä <C-]>

" easier moving between windows
nnoremap <silent> ¿ :wincmd<SPACE>h<CR>
nnoremap <silent> <k4> :wincmd<SPACE>j<CR>
nnoremap <silent> <k5> :wincmd<SPACE>k<CR>
nnoremap <silent> <k6> :wincmd<SPACE>l<CR>
nnoremap <silent> <k1> :wincmd<SPACE>c<CR>
nnoremap <silent> <k2> :wincmd<SPACE>s<CR>
nnoremap <silent> <k3> :wincmd<SPACE>v<CR>
noremap <silent> <C-F9> :vertical resize -10<CR>
noremap <silent> <C-F12> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F10> :vertical resize +10<CR>



" vim-ruby settings
let g:rubycomplete_buffer_loading=1 "include current buffer
let g:rubycomplete_classes_in_global = 1 "extract classes from current buffer for completion
let g:rubycomplete_include_object = 1
let g:rubycomplete_include_objectspace = 1

"func! DelayedFunc(cmd,...)
"    " cmd , iter , delay
"    let iter=10
"    let delay=20
"    if a:0 == 2
"        let iter = a:1
"        let delay = a:2
"    endif
"    let i = 0
"    " first section
"    let ot = iter/5*4
"    let start = range(100,0,eval(-100/(ot-1)))
"    " second section
"    let tt = iter - ot
"    let end = range(0,100,eval(100/(tt-1)))
"    " list of speeds
"    let speed = start + end
"    if a:cmd != ""
"        while i < iter
"            execute a:cmd
"            try
"                exec "sleep " . eval(delay*speed[i]/100) . "m"
"            catch *
"            endtry
"            let i = i + 1
"            redraw
"        endwhile
"    endif
"endfunc
