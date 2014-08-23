set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
"Bundle 'Shougo/neocomplcache'
Bundle 'mattn/emmet-vim'
"Bundle 'Raimondi/delimitMate'
"Bundle 'ervandew/supertab'
Bundle 'Valloric/YouCompleteMe'
" snippets
"Bundle 'garbas/vim-snipmate'
" Bundle 'honza/vim-snippets'
Bundle 'SirVer/ultisnips'
"------ snipmate dependencies -------
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
"Bundle 'edsono/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'junegunn/vim-easy-align'
"Bundle 'sjl/gundo.vim'
"Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
"Bundle 'humiaozuzu/TabBar'
"Bundle 'majutsushi/tagbar'
"Bundle 'mileszs/ack.vim'
Bundle 'dyng/ctrlsf.vim'
Bundle 'kien/ctrlp.vim'
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
" Bundle 'bronson/vim-trailing-whitespace'

"-------------
" Other Utils
"-------------
" Bundle 'humiaozuzu/fcitx-status'
" Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
"Bundle '2072/PHP-Indenting-for-VIm'
"Bundle 'tpope/vim-rails'
"Bundle 'lepture/vim-jinja'
"Bundle 'digitaltoad/vim-jade'

"------- web frontend ----------
"Bundle 'othree/html5.vim'
" Bundle 'tpope/vim-haml'
"Bundle 'pangloss/vim-javascript'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'nono/jquery.vim'
" Bundle 'groenewege/vim-less'
" Bundle 'wavded/vim-stylus'
" Bundle 'nono/vim-handlebars'

"------- markup language -------
"Bundle 'tpope/vim-markdown'
" Bundle 'timcharper/textile.vim'

"------- Ruby --------
" Bundle 'tpope/vim-endwise'

"------- Go ----------
" Bundle 'jnwhiteh/vim-golang'

"------- FPs ------
 Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'wlangstroth/vim-racket'
" Bundle 'vim-scripts/VimClojure'
" Bundle 'rosstimson/scala-vim-support'

"--------------
" Color Schemes
"--------------
"Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'rickharris/vim-monokai'
"Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
"Bundle 'chriskempson/vim-tomorrow-theme'
"Bundle 'fisadev/fisa-vim-colorscheme'
Bundle 'nanotech/jellybeans.vim'

filetype plugin indent on     " required!

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ



" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable syntax hightlight and completion
syntax on

"--------
" Vim UI
"--------
" color scheme
" set background=dark
" color solarized
" colorscheme distinguished
colorscheme jellybeans 

" highlight current line
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn
" set cursorline cursorcolumn

" search
set incsearch
"set highlight  " conflict with highlight current line
set ignorecase
set smartcase

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
" set nowrap                                                        " dont wrap lines
set wrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
" set relativenumber

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120

autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby,eruby source ~/.vim/ruby-macros.vim
autocmd FileType eruby let b:surround_45 = "<% \r %>"
autocmd FileType eruby let b:surround_61 = "<%= \r %>"

autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

autocmd FileType c,cpp setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType c,cpp source ~/.vim/c-macros.vim

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"-----------------
" Plugin settings  reference : https://github.com/humiaozuzu/dot-vimrc
"-----------------
" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'
" let g:EasyMotion_leader_key = '\'
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" ultisnips and vim-snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" You complete Me
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_filetype_blacklist = {
    \ 'ruby' : 1,
    \ 'tagbar' : 1,
    \ 'qf' : 1,
    \ 'notes' : 1,
    \ 'markdown' : 1,
    \ 'unite' : 1,
    \ 'text' : 1,
    \ 'vimwiki' : 1,
    \ 'gitcommit' : 1,
    \}

" easyAlign
" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign with a Vim movement
nmap <Leader>a <Plug>(EasyAlign)

" ctrlsf
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_auto_close = 0

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.day$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
" let NERDTreeWinPos = "right"
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q
map <C-n> :NERDTreeToggle<CR>

" nerdcommenter
let NERDSpaceDelims=1
let mapleader=","
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" ZenCoding
let g:user_emmet_expandabbr_key='<C-j>'

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Keybindings for plugin toggle
"nnoremap <F2> :set invpaste paste?<CR>
"set pastetoggle=<F2>
"nmap <F5> :TagbarToggle<cr>
"nmap <F6> :NERDTreeToggle<cr>
"nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
"nmap  <D-/> :
"nnoremap <leader>a :Ack
"nnoremap <leader>v V`]

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
" nmap <silent> <leader>ev :e $MYVIMRC<CR>
" nmap <silent> <leader>sv :so $MYVIMRC<CR>

" sublime key bindings
"nmap <D-]> >>
"nmap <D-[> <<
"vmap <D-[> <gv
"vmap <D-]> >gv

" eggcache vim
" nnoremap ; :
" :command W w
" :command WQ wq
" :command Wq wq
" :command Q q
" :command Qa qa
" :command QA qa

" for macvim
if has("gui_running")
    "set go=aAce  " remove toolbar
    set transparency=18
    set guifont=Monaco:h13
    set showtabline=2
    set columns=100
    set lines=30
    noremap <D-M-Left> :tabprevious<cr>
    noremap <D-M-Right> :tabnext<cr>
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif



" 新建文件自动插入
" autocmd BufNewFile *.cpp,*.[ch],*.sh exec ":call SetTitle()"

" func SetTitle()
    " if &filetype == 'sh'
        " call setline(1,"\#!/bin/bash")
        " call append(line("."), "")
    " elseif &filetype == 'cpp'
        " call setline(1, "// Create at: ".strftime("%d/%m/%Y %H:%M:%S"))
        " call append(line("."), "#include <iostream>")
        " call append(line(".")+1, "using namespace std;")
        " call append(line(".")+2, "")
        " call append(line(".")+3, "int main(int argc, char** argv){")
        " call append(line(".")+4, "    ")
        " call append(line(".")+5, "}")
    " elseif &filetype == 'c'
        " call setline(1, "// Create at: ".strftime("%d/%m/%Y %H:%M:%S"))
        " call append(line("."), "#include <stdio.h>")
        " call append(line(".")+1, "")
        " call append(line(".")+2, "int main(int argc, char** argv){")
        " call append(line(".")+3, "    ")
        " call append(line(".")+4, "}")
    " endif
" endfunc
" 新建文件后，自动定位到文件末尾
" autocmd BufNewFile * normal G


" format code with astyle when coding c or cpp
func FormatSrc()
    exec "w"
    exec "!astyle --style=google --suffix=none --indent=spaces=4 --mode=c -p -H -xe -O --lineend=linux %"
    exec "e! %"
    return 
endfunc

nnoremap <F5> :call FormatSrc() <CR><CR>

