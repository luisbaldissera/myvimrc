unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

let g:netrw_banner = 0
let g:netrw_liststyle = 0
let g:netrw_localcopycmd = "cp"

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
set tabstop=4
set shiftwidth=4
set bg=dark
set backup
set backupext=.bak
set patchmode=.orig
set listchars+=tab:>>
set listchars+=trail:-
set listchars+=precedes:%
set listchars+=extends:@
set nolist

map <C-k> ddkP
map <C-j> ddp
map <C-Up> <C-k>
map <C-Down> <C-j>
map <C-p> :FZF<CR>
map g<Tab> :tabnew .<CR>

packadd! matchit
packadd! shellmenu
packadd! justify

colorscheme gruvbox

augroup vimau
    au!
    autocmd FileType html setlocal nowrap
    autocmd FileType md,pandoc,plain setlocal list
augroup end
