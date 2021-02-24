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

set hidden
set nobackup
set cmdheight=2

set number
set expandtab
set tabstop=4
set shiftwidth=4
set bg=dark

map <C-c> :FIGlet -ct -f term<CR>
map <C-k> ddkP
map <C-j> ddp
map <F2> :FIGlet -t<CR>
map <C-p> :FZF<CR>
map <C-Up> <C-k>
map <C-Down> <C-j>
map <silent> <C-d> :botright terminal<CR>
map <silent> <C-t> :tabnew .<CR>
map <silent> <Tab> :tabnext<CR>
map <silent> <S-Tab> :tabprevious<CR>

colorscheme gruvbox

