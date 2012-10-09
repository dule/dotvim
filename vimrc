"pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() "call this when installing new plugins
filetype plugin on

let mapleader=','

set number
set ruler
set laststatus=2

set incsearch
set hlsearch

"indent configs
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

set ignorecase
set smartcase
set switchbuf=usetab,newtab

set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp,/var/tmp,/tmp

syntax on
colorscheme earendel

" Use ctrl-[hjkl] to select the active split
map <silent> <C-Up> :wincmd k<CR>
map <silent> <C-Down> :wincmd j<CR>
map <silent> <C-Left> :wincmd h<CR>
map <silent> <C-Right> :wincmd l<CR>

map <silent> <C-k> :wincmd k<CR>
map <silent> <C-j> :wincmd j<CR>
map <silent> <C-h> :wincmd h<CR>
map <silent> <C-l> :wincmd l<CR>

map <silent> <D-j> 10j
map <silent> <D-k> 10k

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

map <F4> :execute "noautocmd vimgrep /\\<" . expand("<cword>") . "\\>/gj **/*." .  expand("%:e") <Bar> cw<CR>
nnoremap <silent> <F5> :!coffee %<CR>
nnoremap <F6> :buffers<CR>:buffer<Space>
inoremap <silent> jj <Esc>
nnoremap <silent> ; :

noremap <silent> <Leader>n :NERDTree<CR>
noremap <silent> <Leader>f :NERDTreeFind<CR>

" Remove trailing whitespace on save
autocmd FileType c,cpp,java,php,javascript,coffee,jade,stylus autocmd BufWritePre <buffer> :%s/\s\+$//e

noremap <silent> <Leader>q :q!<CR>
noremap <silent> <Leader>w :wq!<CR>
noremap <silent> <Leader>bd :bd<CR>
noremap <silent> <Leader>cc :CoffeeCompile<CR>
noremap <silent> <Leader>csw :colorscheme habilight<CR>
noremap <silent> <Leader>csd :colorscheme freya<CR> :colorscheme earendel<CR>
noremap <silent> <Leader>nh :noh<CR>
noremap <silent> <Leader>s :vsplit

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
cmap w!! w !sudo tee % >/dev/null

if has('gui_macvim')
    set macmeta
endif
