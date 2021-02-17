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

set hidden
set nobackup
set cmdheight=2

set number
set expandtab
set tabstop=4
set shiftwidth=4
set bg=dark

map <silent> <C-p> :FZF<CR>
map <C-c> :FIGlet -ct -f term<CR>
map <C-k> ddkP
map <C-j> ddp
map <C-Down> <C-j>
map <F2> :FIGlet -t<CR>
map <silent> <C-d> :botright terminal<CR>
map <silent> <C-Up> <C-k>
map <silent> <C-t> :tabnew .<CR>
map <silent> <Tab> :tabnext<CR>
map <silent> <S-Tab> :tabprevious<CR>
map <silent> <C-k>z :Goyo<CR>

xmap <C-k> dkP
xmap <C-j> dp

colorscheme gruvbox

