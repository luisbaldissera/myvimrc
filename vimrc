source $VIMRUNTIME/defaults.vim
" Install the plugins from VIM-Plug
call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/syntastic'
    Plug 'valloric/youcompleteme'
    Plug 'stevearc/vim-arduino'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'mattn/emmet-vim'
    Plug 'majutsushi/tagbar'
    " vim themes
    Plug 'dracula/vim',{ 'as': 'dracula' }
    Plug 'morhetz/gruvbox'
call plug#end()
" Edditing
map <C-k> ddkP
map <C-j> ddp
map <C-Up> <C-k>
map <C-Down> <C-j>
" Tab managing
map tn :tabnew<CR>
map to :tabnew .<CR>
map tq :tabclose<CR>
map <Tab> :tabnext<CR>
map <S-Tab> :tabprevious<CR>
" GitHub & Gutter
map <C-g>d :Gvdiffsplit<CR>
map <C-g>n :GitGutterNextHunk<CR>
map <C-g>p :GitGutterPrevHunk<CR>
map <C-g>a :GitGutterStageHunk<CR>
map <C-g>r :GitGutterUndoHunk<CR>
" Side tree
map <C-b> :NERDTreeToggle<CR>
" Emmet
let g:emmet_html5=1
" Theme color definitions
color gruvbox
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='soft'
set bg=dark
" General view configurations
set backup
if has('persistent_undo')
    set undofile
endif
if has('autocmd')
    autocmd FileType text setlocal textwidth=80
endif
set number
set shiftwidth=4
set expandtab
set tabstop=4
set smartindent
set hlsearch
set history=64
filetype plugin on
