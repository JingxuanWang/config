" settings by Wang Jingxuan

set nocompatible               " be iMproved, required
filetype off                   " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Plugin 'Shougo/neobundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'FencView.vim'
Plugin 'Markdown'
Plugin 'Markdown-syntax'
Plugin 'rust-lang/rust.vim'

Plugin 'winmanager'
Plugin 'ctags.vim'
Plugin 'taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'bufexplorer.zip'

" All of your Plugins must be added before the following line
call vundle#end()             " required
filetype plugin indent on     " required


set nu
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set title
set ruler
set hlsearch
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp-3,euc-jp,cp932,sjis,ucs-bom,latin1
set fileformat=mac
set fileformats=mac,unix,dos
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
color peachpuff

" set vi-not-compatible
set nocp

filetype indent on

set showmatch
set showmode

highlight JpSpace cterm=underline ctermfg=Green guifg=Green

set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,]
set laststatus=2


let g:airline#extensions#tabline#enabled = 1

" Go Vim Plugins
set rtp+=$GOROOT/misc/vim
filetype plugin on
filetype indent on
syntax on

" filetype go
au BufRead,BufNewFile *.go set filetype=go
au BufReadPost *.ep set syntax=html
au BufReadPost *.mi set syntax=perl
au BufReadPost *.m  set syntax=perl

" map double tab to omnifunc completion
"imap qq <c-p>
"imap xx <c-x><c-o>

"filetype on
"filetype plugin on

"syntax on

"show over 80 columns
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" set omnifunc according to filetype
" Type <C-x><C-O> to invoke omnicomplete during insert mode
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType go set omnifunc=gocomplete#Complete

" Remove tailing whitespaces
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Omni Completion Explanation
"|<c-n>|      - Keywords in 'complete' searching down.\n" .
"|<c-p>|      - Keywords in 'complete' searching up (SuperTab default).\n" .
"|<c-x><c-l>| - Whole lines.\n" .
"|<c-x><c-n>| - Keywords in current file.\n" .
"|<c-x><c-k>| - Keywords in 'dictionary'.\n" .
"|<c-x><c-t>| - Keywords in 'thesaurus', thesaurus-style.\n" .
"|<c-x><c-i>| - Keywords in the current and included files.\n" .
"|<c-x><c-]>| - Tags.\n" .
"|<c-x><c-f>| - File names.\n" .
"|<c-x><c-d>| - Definitions or macros.\n" .
"|<c-x><c-v>| - Vim command-line.\n" .
"|<c-x><c-u>| - User defined completion.\n" .
"|<c-x><c-o>| - Omni completion.\n" .
"|<c-x>s|     - Spelling suggestions."

" Taglist Settings
"let Tlist_Auto_Open = 1 
"let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Exit_OnlyWindow = 1

" WinManater Settings
let g:winManagerWidth = 45
"let g:winManagerWindowLayout='FileExplorer|TagList'
"map mm :WMToggle<CR>

" ============CTags Settings============
set tags=tags;
" map <C-M> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>

" You can build user-defined tags there
"set tags+=~/.vim/MyTags/stltags

" ============CScope Setttins===========
set cscopequickfix=s-,c-,d-,i-,t-,e-

if has("cscope")
    set csprg=/usr/local/bin/cscope
    set csto=1
    set cst
    set nocsverb
    
    " add any database in current directory 
    if filereadable("cscope.out")
        cs add cscope.out
    endif

    set csverb
endif

" CScope Quick Commands
" Find Symbols
map <c-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
" Find Defination
map <c-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
" Find function calls from this function
map <c-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
" Find functions that called current function
map <c-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" Find specific string
map <c-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
" Find specific pattern
map <c-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
" Find and open file
map <c-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
" Find files that included current file
map <c-\>i :cs find i ^<C-R>=expand("<cfile>")<CR><CR>

" nerttree
"map <C-n> :NERDTreeToggle<cr>

let g:NERDTree_title = "[NERDTree]"

function! NERDTree_Start()
    exe 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

let g:winManagerWindowLayout = "NERDTree|TagList,BufExplorer"
nmap mm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>

