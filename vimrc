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

" JSLint settings
" nnoremap <silent> <F5> :w<CR>:make %<CR>:cw<CR>
" inoremap <silent> <F5> <C-O>:make %<CR><C-O>:cw<CR>
" nnoremap <silent> <C-F5> :cn<CR>
" nnoremap <silent> <S-F5> :cp<CR>
nnoremap <silent> <F5> :!coffee %<CR>
inoremap <silent> jj <Esc>
autocmd FileType javascript set makeprg=jslint\ %
autocmd FileType javascript set efm=%-P%f,
                    \%E%>\ #%n\ %m,%Z%.%#Line\ %l\\,\ Pos\ %c,
                    \%-G%f\ is\ OK.,%-Q

autocmd FileType c,cpp,java,php,javascript,coffee,jade autocmd BufWritePre <buffer> :%s/\s\+$//e

noremap <silent> <Leader>n :NERDTree<CR>
noremap <silent> <Leader>f :NERDTreeFind<CR>

noremap <silent> <Leader>s :w<CR>
noremap <silent> <Leader>q :q!<CR>
noremap <silent> <Leader>w :wq!<CR>
noremap <silent> <Leader>bd :bd<CR>
noremap <silent> <Leader>cc :CoffeeCompile<CR>
noremap <silent> <Leader>csw :colorscheme habilight<CR>
noremap <silent> <Leader>csd :colorscheme freya<CR> :colorscheme earendel<CR>
noremap <silent> <Leader>nh :noh<CR>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
