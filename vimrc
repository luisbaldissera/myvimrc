unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

let g:netrw_banner = 0
let g:netrw_liststyle = 0
let g:netrw_localcopycmd = "cp"
" In development...
let g:netrw_gitignore_enabled = 1

let g:javascript_plugin_jsdoc = 1
let g:javascript_conceal_arrow_function = "⇒"
let g:javascript_conceal_function = "ƒ"
let g:javascript_conceal_return = "⇚"

let g:molokai_original = 1
let g:rehash256 = 1

let g:gruvbox_italic = 1

let g:goyo_width = '90%'
let g:goyo_height = '90%'
let g:goyo_linenr = 0

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Coc default extensiosn
let g:coc_global_extensions = [
  \   'coc-css',
  \   'coc-docker',
  \   'coc-git',
  \   'coc-html',
  \   'coc-tabnine',
  \   'coc-yaml',
  \   'coc-tsserver',
  \   'coc-sql',
  \   'coc-xml',
  \   'coc-json',
  \   'coc-java',
  \   'coc-go',
  \   'coc-solargraph'
  \ ]

if &t_Co > 1
    syntax enable
endif

if &t_Co > 2 || has("gui_running")
    set hlsearch
endif

set incsearch
set hidden
set nobackup
set cmdheight=1
set number
set expandtab
set tabstop=2
set shiftwidth=2
set sessionoptions+=resize
set laststatus=2
set bg=dark
set listchars+=tab:>>
set listchars+=trail:-
set listchars+=precedes:%
set listchars+=extends:@
set splitbelow
set splitright
set nolist
set foldmethod=indent
set foldlevelstart=999

nmap <C-p> :FZF<CR>

" Figlet
nmap <F2> :.!figlet<CR>
vmap <F2> :!figlet<CR>

" Moving lines
nmap <C-k> :move .-2<CR>==
nmap <C-j> :move .+1<CR>==
nmap <C-Up> <C-k>
nmap <C-Down> <C-j>
vmap <C-k> :global/^/move .-2<CR>==gv
vmap <C-j> :global/^/move '>+1<CR>==gv
vmap <C-Up> <C-k>
vmap <C-Down> <C-j>

" Navigating in args
map <C-l> :next<CR>
map <C-h> :prev<CR>
map <C-Left> <C-h>
map <C-Right> <C-l>

" Managing Tabs
map <Tab>n :tabnew .<CR>
map <Tab>c :tabclose<CR>
map <Tab>h :-tabmove<CR>
map <Tab>l :+tabmove<CR>
map <Tab><Left> <Tab>h
map <Tab><Right> <Tab>l

packadd! matchit
packadd! shellmenu
packadd! justify

colorscheme gruvbox

augroup vimau
    au!
    autocmd FileType html setlocal nowrap
    autocmd FileType md,pandoc,plain setlocal list
    autocmd VimEnter,WinEnter * if !exists('w:_vsc_conflict_marker_match') |
        \   let w:_vsc_conflict_marker_match = matchadd('ErrorMsg', '^\(<\|=\||\|>\)\{7\}\([^=].\+\)\?$') |
        \ endif
augroup end

map <F2> :diffget 1<CR>
map <F8> :diffget 2<CR>
" map <F5> :wqa<CR>
