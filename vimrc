"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: Arjun Ramachandrula
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Display line numbers
set number

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 


" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell

" Add a bit extra margin to the left
set foldcolumn=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"" statusline
set laststatus=2
set statusline=                          " left align
set statusline+=%2*%{StatuslineMode()}
set statusline+=%2*
set statusline+=%1*\ <<
set statusline+=%1*\ %f                  " short filename              
set statusline+=%1*\ >>
set statusline+=%=                       " right align
set statusline+=%*
set statusline+=%3*\%h%m%r               " file flags (help, read-only, modified)
set statusline+=%3*\%y                   " file type
set statusline+=%3*\%l/%L\\|             " line count
hi User1 ctermbg=gray ctermfg=black guibg=gray guifg=black
hi User2 ctermbg=green   ctermfg=black  guibg=green   guifg=black
hi User3 ctermbg=blue  ctermfg=black guibg=blue  guifg=black
"" statusline functions
function! StatuslineMode()
    let l:mode=mode()
    if l:mode==#"n"
        return "N"
    elseif l:mode==?"v"
        return "V"
    elseif l:mode==#"i"
        return "I"
    elseif l:mode==#"R"
        return "R"
    else
        return ""
    endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set tw=100

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

