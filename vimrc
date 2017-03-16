call plug#begin('~/.vim/plugged')

set rtp+=/usr/local/opt/fzf

Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
"Plug 'bkad/CamelCaseMotion'
Plug 'bling/vim-airline'
Plug 'chaoren/vim-wordmotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'digitaltoad/vim-jade'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'elzr/vim-json'
Plug 'flazz/vim-colorschemes'
Plug 'godlygeek/tabular'
Plug 'janko-m/vim-test'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
"Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-smooth-scroll'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/Conque-Shell'
Plug 'wavded/vim-stylus'

Plug 'valloric/youcompleteme', { 'do': './install.py' }

call plug#end()

syntax on
filetype plugin indent on

let mapleader=','
let g:session_autosave='no'

let g:ConqueTerm_StartMessages=0
let g:ConqueTerm_InsertOnEnter=0

let NERDTreeShowHidden=1
let NERDTreeWinSize=35
let g:NERDChristmasTree=1
let g:nerdtree_tabs_open_on_gui_startup=1
let g:nerdtree_tabs_synchronous_focus=0
let g:nerdtree_tabs_focus_on_files=1

let g:gitgutter_eager=0
let g:gitgutter_realtime=0

let $FZF_DEFAULT_COMMAND='Ag --hidden 
\--ignore-dir=.git 
\--ignore-dir=node_modules 
\--ignore-dir=dist 
\--ignore-dir=build -g ""'

"let g:syntastic_coffee_coffeelint_args="--csv --file ~/coffeelint.json"
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠' 
let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['eslint']

let g:fzf_action = { 'enter': 'tab split' }
let g:fzf_height = '25%'
let g:fzf_launcher = "/usr/local/bin/fzf.applescript %s"

let g:test#runner_commands = ['Mocha']
let test#strategy = "iterm"

"let g:ctrlp_custom_ignore = { 'dir': '/lib$' }

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

" Fix syntastic's background colouring of sign column
highlight! link SignColumn LineNr
"highlight clear SignColumn

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set ignorecase
set smartcase
set autoindent
set smartindent
set colorcolumn=120
set lines=999 columns=999
set guifont=Menlo\ Regular:h14

set switchbuf=usetab,newtab
set wildignore=node_modules/**,dist/**,build/**,vendor/**,lib/**,*/tmp/*,*.so,*.swp,*.zip,*.orig
set directory=~/.vim/tmp,/var/tmp,/tmp
set clipboard=unnamed

set number
set ruler
set laststatus=2

set incsearch
set hlsearch

set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp,/var/tmp,/tmp
set undodir^=~/.vim/undo

colorscheme hybrid
set background=dark

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

nnoremap <silent> <Tab> <C-w>w

noremap <F10> :call RunMochaOnFile()<CR>
noremap <F4> :silent Ggrep <cword><CR> :copen<CR>
nnoremap <F6> :buffers<CR>:buffer<Space>
inoremap <silent> jj <Esc>
nnoremap <silent> ; :

noremap <silent> <Leader>n :NERDTreeTabsToggle<CR>
noremap <silent> <Leader>f :NERDTreeFind<Cr>:vertical resize 40<CR>

" Remove trailing whitespace on save
autocmd FileType c,cpp,java,php,javascript,coffee,pug,stylus autocmd BufWritePre <buffer> :%s/\s\+$//e

" Set filetypes
autocmd BufRead,BufNewFile,BufReadPre *.coffee,*._coffee set filetype=coffee
autocmd BufRead,BufNewFile,BufReadPre *.jade set filetype=pug
autocmd BufRead,BufNewFile,BufReadPre *.styl set filetype=stylus

noremap <silent> <Leader>q :q!<CR>
noremap <silent> <Leader>w :wq!<CR>
noremap <silent> <Leader>bd :bd<CR>
noremap <silent> <Leader>cc :CoffeeCompile<CR>
noremap <silent> <Leader>nh :noh<CR>
noremap <silent> <Leader>s :vsplit<CR>
noremap <silent> <Leader>v :so $MYVIMRC<CR>
noremap <silent> <Leader>cd :cd %:p:h<CR>

noremap <silent> <Leader>j :%!python -m json.tool<CR>
noremap <silent> <Leader>gk :!gitk %:p<CR>
noremap <silent> <Leader>p :let @+=expand("%:p")<CR>

nmap <Leader>g :silent Ggrep -C2<space>
noremap <silent> <Leader>t :CtrlPMixed<CR>

nmap <silent> <leader>m :Mocha %:p<CR>

inoremap <C-c> <ESC>
nnoremap <C-c> :nohl<CR>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
cmap w!! w !sudo tee % >/dev/null

" Use the CamelCaseMotion plugin to use camel case word boundaries for w, b, e
" movement
"map <silent> w <Plug>CamelCaseMotion_w
"map <silent> b <Plug>CamelCaseMotion_b
"map <silent> e <Plug>CamelCaseMotion_e
"sunmap w
"sunmap b
"sunmap e

noremap <silent> <c-u> :call smooth_scroll#up(40, 20, 6)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(40, 20, 6)<CR>
" smooth_scroll is broken in visual mode currently - unmap
vnoremap <silent> <c-u> <c-u>
vnoremap <silent> <c-d> <c-d>

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

if has('gui_macvim')
    set guifont=Menlo\ Regular:h16
    set macmeta
endif

function RunMochaOnFile()
  execute "ConqueTermSplit mocha" bufname('%')
endfunction

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  let g:ctrlp_prompt_mappings = {
        \ 'AcceptSelection("e")': ['<c-t>'],
        \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
        \ }

endif

"autocmd QuickFixCmdPost *grep* cwindow
