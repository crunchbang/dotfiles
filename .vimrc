" .vimrc 
" Last modified on Sat Dec 30 16:40:03 IST 2017

" specify a directory for plugins 
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'neovimhaskell/haskell-vim', { 'for' : 'haskell' } 
" initialize plugin system
call plug#end()

" necessary for lots of cool vim things
set nocompatible

" keep the file within vim updated if it has been modified from the outside
set autoread

" organize swap files
set directory^=$HOME/.vim/tmp//

" enable syntax highlighting 
syntax on
" fix for vim's utter oblviousness when it comes to .md files
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  set ft=markdown
" load filetype-specific indent files
filetype plugin indent on

" gotta look good
set background=dark
set t_Co=256
colorscheme solarized
" spellcheck 
hi clear SpellBad
hi SpellBad cterm=underline
autocmd FileType markdown,vimwiki setlocal spell
" the holy limit
set textwidth=80

" width for '>'
set shiftwidth=4

" show line number
set number
set relativenumber

" indentation magic
set smartindent
set autoindent

" highlight the line containing the cursor
set cursorline
" always show status line
set laststatus=2
" show command in bottom bar
set showcmd
" show line and colum no. of cursor position
set ruler
" autocomplete commands
set wildmenu

" incremental search
set incsearch
" highlight all matches
set hlsearch

" number of visual spacs per TAB
set tabstop=4
" number of spaces in tab when editing
set softtabstop=4
" tabs are converted to spaces
set expandtab

" remap leader key to ,
let mapleader=","

" folds
set foldenable
set foldlevelstart=10
set foldnestmax=10
"space open/close folds
noremap <space> za
set foldmethod=syntax
set foldmethod=manual

" vimwiki
" let g:vimwiki_list = [{'path': '$HOME/Documents/the_system', 'syntax':
" 'markdown', 'ext': '.md'}] - alternate style
let g:vimwiki_list = [{'path': '$HOME/Documents/the_system'}]
let g:vimwiki_dir_link = 'index'

" NERDTree
" key shortcut
map <C-n> :NERDTreeToggle<CR>

" Goyo
let g:goyo_width = 90

" easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" easy timestamp
map <C-D> :r!date "+\%Y-\%m-\%d"<CR>

" easy filename
map <C-F> :put=expand('%:t:r')<CR>


" Simplify help navigation - see ftplugin/help.vim

" misc stuff

" jk is escape
" inoremap jk <esc>

" set spell check
" set spell spelllang=en_us

" nnoremap <space><space> :nohlsearch<CR>
