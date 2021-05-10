unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

filetype plugin on
filetype plugin indent on

let g:goyo_height = '90%'
let g:goyo_linenr = 0
let g:goyo_width = '90%'

let g:gruvbox_italic = 1

let g:javascript_plugin_jsdoc = 1

let g:molokai_original = 1

let g:netrw_banner = 0
let g:netrw_liststyle = 0
let g:netrw_localcopycmd = "cp"

let g:rehash256 = 1

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"

" Indent line
let g:indentLine_char = '▏'

" Airline
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'

" Assynchronous Linting Engine (ALE)
let g:ale_completion_autoimport = 1
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_sign_error = '✗'
let g:ale_sign_info = 'ⓘ'
let g:ale_sign_warning = 'Δ'
let g:ale_echo_cursor = 0
let g:ale_pattern_options = { '\.min.js$': { 'ale_enabled': 0 } }
let g:ale_floating_preview = 1
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰']

" Git gutter
let g:gitgutter_sign_added='+'
let g:gitgutter_sign_modified='~'
let g:gitgutter_sign_removed='_'
let g:gitgutter_sign_removed_first_line='‾'
let g:gitgutter_sign_removed_above_and_below='='
let g:gitgutter_sign_modified_removed='≃'

let &t_ut = ''

if &t_Co > 1
    syntax enable
endif

if &t_Co > 2 || has("gui_running")
    set hlsearch
endif

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

" Options
set bg=dark
set cmdheight=1
set cursorline
set expandtab
set foldlevelstart=999
set foldmethod=indent
set foldtext=gitgutter#fold#foldtext()
set hidden
set ignorecase
set incsearch
set laststatus=2
set listchars+=extends:@
set listchars+=precedes:%
set listchars+=tab:>>
set listchars+=trail:-
set matchtime=0
set nobackup
set nolist
set number
set omnifunc=ale#completion#OmniFunc
set path+=**
set relativenumber
set sessionoptions+=resize
set shiftwidth=2
set showmatch
set splitbelow
set splitright
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-10{LinterStatus()}\ %-14.(%l,%c%V%)\ %P
set tabstop=2
set updatetime=100
set wildmenu

" Fuzzy finder
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

" Executing command
nmap <Leader>e :exec 'r!'.getline('.')<CR>

" Buff surf
map ]b :BufSurfForward<CR>
map [b :BufSurfBack<CR>

" Git mappings
map <Leader>gg :Git 
map <Leader>gm :GitMessenger<CR>
map <Leader>gl :Gclog<CR>
map <Leader>gs :Git<CR>
map <Leader>gd :Gdiffsplit<CR>
map <Leader>gb :Git blame<CR>
map <Leader>gp :Git push<CR>

" File tags
map <Leader>t :Tagbar<CR>

" Navigating in args
map <C-h> :prev<CR>
map <C-l> :next<CR>
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

augroup vimau
    au!
    autocmd FileType html setlocal nowrap
    autocmd FileType markdown setlocal syntax=pandoc
    autocmd VimEnter,WinEnter * if !exists('w:_vsc_conflict_marker_match') |
        \   let w:_vsc_conflict_marker_match = matchadd('ErrorMsg', '^\(<\|=\||\|>\)\{7\}\([^=].\+\)\?$') |
        \ endif
    autocmd FileType javascript,javascript.jsx setlocal formatprg=prettier
    autocmd FileType git set foldmethod=syntax foldlevel=0
augroup end

map <F2> :diffget 1<CR>
map <F8> :diffget 2<CR>
" map <F5> :wqa<CR>

colorscheme gruvbox

