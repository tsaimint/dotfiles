set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Bundle 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Bundle 'tpope/vim-fugitive'
Bundle 'flazz/vim-colorschemes'
Bundle 'guns/vim-clojure-highlight'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-projectionist'
Bundle 'tpope/vim-dispatch'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-leiningen'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-sensible'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'vim-scripts/paredit.vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'bling/vim-airline'
Bundle 'edkolev/tmuxline.vim'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/vimshell.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
"	Plugin 'L9'
" Git plugin not hosted on GitHub
" 	Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" 	Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"	Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"	Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :pluginclean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
colorscheme ir_black


"Exit the edit mode.
imap jk <ESC> 

nmap <C-n> :NERDTreeToggle<CR>
nmap <C-n><C-n> :set invrelativenumber<CR>

syntax on

set tabstop=4 shiftwidth=4 expandtab
set hls
"set number
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set relativenumber

"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {    'dir':  '\v[\/]\.(git|hg|svn)$',    'file': '\v\.(exe|so|dll)$',    'link': 'some_bad_symbolic_links',    }

"status line
"set setatusline 

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'
