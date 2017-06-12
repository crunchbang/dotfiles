" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'

" On-demand loading
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'

" Initialize plugin system
call plug#end()

" Necessary for lots of cool vim things
set nocompatible
"enable syntax highlighting 
syntax on
" load filetype-specific indent files
filetype plugin indent on
" show line number
set number
set relativenumber
set smartindent
set autoindent
let mapleader=","
" show command in bottom bar
set showcmd

" set cursorline
set laststatus=2
set ruler
set wildmenu
set incsearch
set hlsearch
nnoremap <space><space> :nohlsearch<CR>
" number of visual spacs per TAB
set tabstop=4
" number of spaces in tab when editing
set softtabstop=4
" tabs are spaces
set expandtab

set foldenable
set foldlevelstart=10
set foldnestmax=10
"space open/close folds
noremap <space> za
set foldmethod=syntax

" jk is escape
" inoremap jk <esc>

" set spell check
" set spell spelllang=en_us

set background=dark
set t_Co=256
" colorscheme solarized

" Keep the file within vim updated if it has been modified from the outside
set autoread

" For YCM
"let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
"let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
"let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
"let g:ycm_complete_in_comments = 1 " Completion in comments
"let g:ycm_complete_in_strings = 1 " Completion in string

" For NERDTree
" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" key shortcut
map <C-n> :NERDTreeToggle<CR>
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"vimwiki
let g:vimwiki_list = [{'path': '$HOME/Documents/wiki'}]
":autocmd FileType vimwiki map d :VimwikiMakeDiaryNote
"function! ToggleCalendar()
"  execute ":Calendar"
"  if exists("g:calendar_open")
"    if g:calendar_open == 1
"      execute "q"
"      unlet g:calendar_open
"    else
"      g:calendar_open = 1
"    end
"  else
"    let g:calendar_open = 1
"  end
"endfunction
