" my .vimrc 
syntax on 
set number relativenumber 
set wildmenu
set path+=**
set showmatch
set noswapfile
set nobackup
set nowb
set ignorecase
set smartcase
set incsearch
set nocp
set hidden
set nobackup
set scrolloff=8
set lazyredraw
set magic
set virtualedit=all
		
filetype plugin indent on 
filetype plugin on

" colorscheme
color habamax

" use jk as ESC
inoremap jk <Esc>

" open files quickly
nnoremap <Leader>v :tabedit $MYVIMRC<CR>

" type w!! to save a file as sudo
cnoremap w!! w !sudo tee > /dev/null %

" tab related maps
nnoremap <Leader>te :tabnew<CR>
nnoremap <Leader>to :tabonly<CR>
nnoremap <Leader>c :tabclose<CR>
nnoremap <Leader>tf :tab Ex<CR>

" paste more efficiently
nnoremap <Leader>p "*p

" use hjkl to resize splits
nnoremap <C-l> :vertical resize -5<CR>
nnoremap <C-h> :vertical resize +5<CR>
nnoremap <C-k> :resize -5<CR>
nnoremap <C-j> :resize +5<CR>

" statusline
"
set laststatus=2
" set statusline=%<%f%m\ \[%{&ff}:%{&fenc}:%Y]\ %{getcwd()}\ \ \[%{strftime('%Y/%b/%d\ %a\ %I:%M\ %p')}\]\ %=\ Line:%l\/%L\ Column:%c%V\ %P
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           
set statusline+=%#Visual#       
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     
set statusline+=%R              
set statusline+=%M              
set statusline+=%#Cursor#       
set statusline+=%#CursorLine#   
set statusline+=\ %t\           
set statusline+=%=              
set statusline+=%#CursorLine#   
set statusline+=\ %Y\           
set statusline+=%#CursorIM#     
set statusline+=\ %3l:%-2c\     
set statusline+=%#Cursor#       
set statusline+=\ %3p%%\        

" netwr
let g:netrw_banner=0
let g:netrw_preview=1
let g:netrw_browser_split=2
let g:netrw_hide=0
let g:netrw_sizestyle="H"
let g:netrw_special_syntax="true"
let g:netrw_winsize=60
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_browsex_viewer= "xdg-open"

" automatically source .vimrc when it is saved
if has("autocmd")
autocmd bufwritepost .vimrc source $MYVIMRC
endif
