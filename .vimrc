set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
" 
"Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

if has("syntax")
	syntax on
endif

nmap <F9> : TagbarToggle<CR>
nmap <F8> : NERDTreeToggle<CR>
nmap <F2> <C-w><C-w>

let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>


set nu
set autoindent "자동 들여쓰기
"set cindent
set ts=2 " Tab 너비
set shiftwidth=2 "자도 인덴트할 때 너비
set hlsearch "검색어 하이라이팅
set autowrite "다른 파일로 넘어갈 때 자동 저장
set autoread "작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set laststatus=2 "상태바 표시를 항상한다.
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set ruler "현재 커서 위치 표시 ?
set showmatch "일치하는 괄호 하이라이팅
set smarttab "?
set smartindent "?
set t_Co=256
"set background=dark
set clipboard=unnamed "use OS clipboard



colorscheme jellybeans


let g:airline#extensions#tabline#enabled = 1              " vim-airline 버퍼 목록 켜기
let g:airline_theme='hybrid'


"Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"    \ quit | endif

"마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
