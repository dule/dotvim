"pathogen
execute pathogen#infect()
Helptags
syntax on
filetype plugin indent on

let mapleader=','

set number
set ruler
set laststatus=2

set incsearch
set hlsearch

"indent configs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set colorcolumn=120

set ignorecase
set smartcase
set switchbuf=usetab,newtab

set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp,/var/tmp,/tmp
set undodir^=~/.vim/undo

set wildignore=node_modules/**

colorscheme solarized
set background=dark

highlight clear SignColumn

" Use ctrl-[hjkl] to select the active split
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

nnoremap <silent> <Leader>k :wincmd k<CR>
nnoremap <silent> <Leader>j :wincmd j<CR>
nnoremap <silent> <Leader>h :wincmd h<CR>
nnoremap <silent> <Leader>l :wincmd l<CR>

noremap <silent> <D-j> 10j
noremap <silent> <D-k> 10k
noremap <silent> <S-D-j> 20j
noremap <silent> <S-D-k> 20k

" Change word with buffer contents
nmap <silent> cp "_cw<C-R>"<Esc>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

noremap <F4> :execute "noautocmd vimgrep /\\<" . expand("<cword>") . "\\>/gj **/*." .  expand("%:e") <Bar> cw<CR>
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
noremap <silent> <Leader>csw :set background=light<CR>
noremap <silent> <Leader>csd :set background=dark<CR>
noremap <silent> <Leader>nh :noh<CR>
noremap <silent> <Leader>s :vsplit
noremap <silent> <Leader>gv :Gitv
noremap <silent> <Leader>v :so $MYVIMRC<CR>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
cmap w!! w !sudo tee % >/dev/null

if has('gui_macvim')
    set guifont=Menlo\ Regular:h14
    set macmeta
endif
