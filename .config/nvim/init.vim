
scriptencoding utf-8
let mapleader=' '
let maplocalleader=''

" general ==================================================
filetype plugin indent on
se ambiwidth=single
se autoindent
se autoread
se backspace=2
se clipboard=unnamedplus
se cmdheight=1
se colorcolumn=70
se complete=.,w,b,u,U,t
se conceallevel=0
se confirm
se cursorcolumn
se cursorline
se encoding=utf-8
se expandtab
se fileencoding=utf-8
se foldcolumn=1
se foldmethod=indent
se foldnestmax=3
se foldtext=getline(v:foldstart)
se hidden
se incsearch
se laststatus=2
se lazyredraw
se linebreak
se matchpairs=(:),[:],{:},<:>
se noautochdir
se nocompatible
se noerrorbells
se nofoldenable
se noruler
se nospell
se novisualbell
se nowrap
se nrformats=alpha,hex,bin
se numberwidth=1
se omnifunc=syntaxcomplete#Complete
se relativenumber
se scrolljump=10
se scrolloff=5
se shiftwidth=4
se shortmess=atW
se showcmd
se showmode
se showtabline=1
se smartindent
se smarttab
se softtabstop=0
se splitbelow
se splitright
se t_Co=256
se t_vb=
se tabpagemax=30
se tabstop=8
se tags+=.tags,rusty-tags.vi
se ttimeoutlen=0 " status bar change mode delay (ms)
se wildignore+=*.swp,*.o,*.out
se wildmenu
se wildmode=longest:full
highlight comment cterm=italic
se mouse=r

se hlsearch
se number

"se cinoptions=>s,ls,+s,(s,)s,us,U1,w1,ks,ms,#s
"se cinoptions=>s,e0,n0,f0,{0,}0,^0,L-1,:s,=s,l0,b0,gs,hs,N0,ps,ts,is,+s,c3,C0,/0,(0,u0,U0,w0,Ws,k0,m0,j0,J0,)20,*70,#0
se cindent

se dir=~/.vim/swp//
se viminfo+=n~/.vim/viminfo
se ttyfast

if has("persistent_undo")
    se undodir=~/.vim/undo
    se undofile
endif

" Status Line ==============================================
se statusline=%(#%n\ %f%)\  " #buf fname
se statusline+=%(%m%r%h%w%) " modified/modifiable/etc
se statusline+=%y%=\  " ftype
se statusline+=%{strlen(&fenc)?&fenc:'none'}: "file encoding
se statusline+=%{&ff}\ \|\  "file format
se statusline+=%(%l:%c\ \|\ %L\ \|\ %) " #L:#C | #TL |

"nnoremap <silent> <LEADER>R :redraw!<CR>

" bindings -------------------------------------------------
" = buffer/function
nnoremap <LEADER>M maggVG=`a_zz
nnoremap <LEADER>m ma][[[V%=`a_zz


"nnoremap <LEADER>W :up<CR>
"nnoremap <LEADER>X :x<CR>

"nnoremap QQ :q!<CR>

" movement keys
"nnoremap <C-J> 5j
"nnoremap <C-K> 5k
"vnoremap <C-J> 5j
"vnoremap <C-K> 5k
"nnoremap B b
"nnoremap E e
"nnoremap W w
"nnoremap b B
"nnoremap e E
"nnoremap w W
"vnoremap B b
"vnoremap E e
"vnoremap W w
"vnoremap b B
"vnoremap e E
"vnoremap w W

" fold
"nnoremap <LEADER><SPACE> za

" move cursor to the beggining/end of the line
"nnoremap gh _
"nnoremap gl $
"nnoremap gj G
"nnoremap gk gg
"vnoremap gh _
"vnoremap gl $
"vnoremap gj G
"vnoremap gk gg

" swap visual and visual block
"nnoremap v <C-V>
"nnoremap <C-V> v

" very magical
"nnoremap / /\v
"nnoremap ? ?\v

" search
"vnoremap / "yy/<C-R>"<CR>
"vnoremap ? "yy?<C-R>"<CR>

" search and replace
"nnoremap <C-S> :%s/\V<C-R><C-W>//cg<LEFT><LEFT><LEFT>
"vnoremap <C-S> "yy:%s/\V<C-R>"//cg<LEFT><LEFT><LEFT>

"nnoremap <silent> <C-n> :NERDTreeToggle<CR>
" quickfix navigation
nnoremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F4> :cwindow<CR>
nnoremap <silent> <F5> :make<CR>
nnoremap <silent> <F6> :make clean<CR>
nnoremap <silent> <F7> :cprevious<CR>
nnoremap <silent> <F8> :cnext<CR>
nnoremap <silent> <F9> :cclose<CR>

"noremap <LEADER>s :sort<CR>
"nnoremap <LEADER>ev :e $MYVIMRC<CR>

" remap :
"nnoremap - :
"vnoremap - :

" tabs
"nnoremap <LOCALLEADER>1 1gt
"nnoremap <LOCALLEADER>2 2gt
"nnoremap <LOCALLEADER>3 3gt
"nnoremap <LOCALLEADER>4 4gt
"nnoremap <LOCALLEADER>5 5gt
"nnoremap <LOCALLEADER>6 6gt
"nnoremap <LOCALLEADER>7 7gt
"nnoremap <LOCALLEADER>8 8gt
"nnoremap <LOCALLEADER>9 9gt
"nnoremap <LOCALLEADER>j gt
"nnoremap <LOCALLEADER>k gT
"nnoremap <silent> <LOCALLEADER>l :bnext<CR>
"nnoremap <silent> <LOCALLEADER>h :bprev<CR>

"nnoremap <C-W>tn :tabnew

" windows
"nnoremap <C-W>tf <C-W>f<C-W>T
"nnoremap <C-W>n :new
nnoremap <C-W>v :vnew
"nnoremap <C-L> :ls<CR>
"nnoremap <C-C> :pwd<CR>

"nnoremap <C-W>q :bdelete<CR>
"nnoremap <C-W>tq :tabclose<CR>

" put stuff around words
nnoremap <LEADER>" viW<ESC>`>a"<ESC>`<i"<ESC>
nnoremap <LEADER>' viW<ESC>`>a'<ESC>`<i'<ESC>
nnoremap <LEADER>` viW<ESC>`>a`<ESC>`<i`<ESC>
nnoremap <LEADER>( viW<ESC>`>a)<ESC>`<i(<ESC>
nnoremap <LEADER>) viW<ESC>`>a)<ESC>`<i(<ESC>
nnoremap <LEADER>[ viW<ESC>`>a]<ESC>`<i[<ESC>
nnoremap <LEADER>] viW<ESC>`>a]<ESC>`<i[<ESC>
nnoremap <LEADER>{ viW<ESC>`>a}<ESC>`<i{<ESC>
nnoremap <LEADER>} viW<ESC>`>a}<ESC>`<i{<ESC>
nnoremap <LEADER>< viW<ESC>`>a><ESC>`<i<<ESC>
nnoremap <LEADER>> viW<ESC>`>a><ESC>`<i<<ESC>

" put stuff around selected text
vnoremap <LEADER>" <ESC>`>a"<ESC>`<i"<ESC>
vnoremap <LEADER>' <ESC>`>a'<ESC>`<i'<ESC>
vnoremap <LEADER>` <ESC>`>a`<ESC>`<i`<ESC>
vnoremap <LEADER>( <ESC>`>a)<ESC>`<i(<ESC>
vnoremap <LEADER>) <ESC>`>a)<ESC>`<i(<ESC>
vnoremap <LEADER>[ <ESC>`>a]<ESC>`<i[<ESC>
vnoremap <LEADER>] <ESC>`>a]<ESC>`<i[<ESC>
vnoremap <LEADER>{ <ESC>`>a}<ESC>`<i{<ESC>
vnoremap <LEADER>} <ESC>`>a}<ESC>`<i{<ESC>
vnoremap <LEADER>< <ESC>`>a><ESC>`<i<<ESC>
vnoremap <LEADER>> <ESC>`>a><ESC>`<i<<ESC>

" abrevs ===================================================
iabbrev adn and
iabbrev amx max
iabbrev itn int
iabbrev reurnt return
iabbrev tehn then
iabbrev tepydef typedef
iabbrev waht what
iabbrev strutc struct
iabbrev flaot float

" invisibles ===============================================
se nolist
se listchars=tab:\|▸,eol:¬,trail:∙
"se listchars=tab:>~,trail:.
nnoremap <C-P> :se list!<CR>

" NETRW files browser ===============================
let g:netrw_liststyle=3 " listing style
let g:netrw_browse_split=0 " opening behaviour
map <C-E> :Explore<CR>

runtime ftplugin/man.vim
runtime macros/matchit.vim

" vim-plug =================================================
let g:plug_threads=4

let g:plug_dir='~/.vim/plugged'

call plug#begin(g:plug_dir)

"Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/syntastic'
"set laststatus=2
set noshowmode
let g:lightline = {
 \ 'colorscheme': 'seoul256',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }
"source ~/.vim/pconfigs/editorconfig.vim
source ~/.config/nvim/pconfigs/molokai.vim
source ~/.config/nvim/pconfigs/dart.vim
"source ~/.config/nvim/pconfigs/typescript.vim
"source ~/.vim/pack/typescript-vim
source ~/.config/nvim/pconfigs/sneak.vim
source ~/.config/nvim/pconfigs/surround.vim
"source ~/.vim/pconfigs/vimproc.vim

"source ~/.vim/pconfigs/awk.vim " awk indentation

source ~/.config/nvim/pconfigs/cool.vim " stop highlight after motion
source ~/.config/nvim/pconfigs/cursorword.vim " Underline words under the cursor

"source ~/.vim/pconfigs/covim.vim
"source ~/.vim/pconfigs/gtd.vim
"source ~/.vim/pconfigs/multiple-cursors.vim
"source ~/.vim/pconfigs/startify.vim

" markdown -------------------------------------------------
"source ~/.vim/pconfigs/tabular.vim
"source ~/.vim/pconfigs/markdown.vim

source ~/.config/nvim/pconfigs/haskell.vim
"source ~/.vim/pconfigs/gdscript.vim " gdscript syntax highlighting (Godot)

call plug#end()

"let g:gtd#dir = '~/.config/notes'

se grepprg=/usr/local/bin/grep

" syntax at the end because of plugins messing with it
set background=dark
colorscheme PaperColor
"colorscheme spring-night
"colorscheme tone
let g:airline_theme = 'molokai'
syntax on

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
autocmd VimEnter * echo ""
