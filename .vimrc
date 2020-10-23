" Last modified on 2020-05-30

" PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/Alok/notational-fzf-vim'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/limelight.vim' " Highlights only active paragraph
Plug 'junegunn/goyo.vim' " Full screen writing mode

"Plug 'fatih/vim-go',      { 'do': ':GoUpdateBinaries' }
"Plug 'reedes/vim-pencil', { 'for': ['markdown', 'txt'] }

call plug#end()

set directory^=$HOME/.vim/tmp//  " organize swap files
set nocompatible                 " necessary for lots of cool vim things
set autoread                     " keep the file within vim updated if it has been modified from the outside
syntax on                        " enable syntax highlighting
filetype plugin indent on        " load filetype-specific indent files
set shiftwidth=4                 " width for '>'
set number                       " show line number
set relativenumber
set smartindent
set autoindent
set cursorline                   " highlight the line containing the cursor
set laststatus=2                 " always show status line
set showcmd                      " show command in bottom bar
set ruler                        " show line and colum no. of cursor position
set wildmenu                     " autocomplete commands
set incsearch                    " incremental search
set hlsearch                     " highlight all matches
set tabstop=4                    " number of visual spacs per TAB
set softtabstop=4                " number of spaces in tab when editing
set expandtab                    " tabs are converted to spaces
let mapleader=","                " remap leader key to ,


" utilities 
nmap <C-D> i<C-R>=strftime("%Y-%m-%d %I:%M:%S")<CR><Esc>
imap <C-D> <C-R>=strftime("%Y-%m-%d %I:%M:%S")<CR>

" use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" undo forever
set undodir=~/.vim/undo-dir
set undofile

" notational velocity 
map <C-n> :NV<CR>
let g:nv_search_paths = ['~/wiki', '~/writing', '~/code', 'docs.md' , './notes.md', '/Users/athul/src/blog/adventures-with-code/content/books']
let g:nv_default_extension = '.md'

set guifont=Monaco:h15
" gvim 
"if has("gui_running")
"    set guifont=Monaco\ 15
"    set lines=999 columns=999
"    " simulate normal copy paste behavior
"    vmap <C-c> "+yi
"    vmap <C-x> "+c
"    vmap <C-v> c<ESC>"+p
"    imap <C-v> <C-r><C-o>+
"    autocmd VimEnter * NERDTree
"endif

set conceallevel=2

" Emmet
let g:user_emmet_leader_key=','

" fzf
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>

" Ag
nnoremap <silent> <leader>a :Ag<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" folds
" set foldenable
" set foldlevelstart=10
" set foldnestmax=10
"space open/close folds
" noremap <space> za
" set foldmethod=syntax
" set foldmethod=manual

" vim-go stuff
"let g:go_def_mode='gopls'
"let g:go_info_mode='gopls'
"let g:go_autodetect_gopath = 0
"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_functions = 1
"let g:go_fmt_command = "goimports"
"let g:go_metalinter_autosave = 1
"let g:go_metalinter_autosave_enabled = ['vet', 'golint']
"autocmd FileType go nmap <silent> <Leader>d <Plug>(go-def-tab)

" Experimental
" nmap =j :%!python -m json.tool<CR>
nmap =j :%!jq '.'<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Cscop
cs add /Users/athul/src/x86_stuff/linux-5.7.6
