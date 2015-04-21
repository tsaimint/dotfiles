set nocompatible              " be iMproved, required
filetype off                  " required
set t_Co=256
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
Bundle 'guns/vim-clojure-highlight'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-classpath'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-projectionist'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-leiningen'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'airblade/vim-gitgutter'
Bundle 'vim-scripts/paredit.vim'
Bundle 'bling/vim-airline'
"Bundle 'itchyny/lightline.vim'
Bundle 'edkolev/tmuxline.vim'
Bundle 'benmills/vimux'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/vimshell.vim'
Bundle 'sukima/xmledit'
Bundle 'majutsushi/tagbar'
"Bundle 'TagHighlight'

"-----------
"Colorscheme
"-----------
Bundle 'sjl/badwolf'
Bundle 'baskerville/bubblegum'
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'blueshirts/darcula.git'
"------------------------------
"Bundle 'flazz/vim-colorschemes'
"------------------------------
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

syntax enable
"set background=dark
colorscheme darcula
"colorscheme solarized
"molokai
hi Normal ctermbg=none
hi NonText ctermbg=none
"Exit the edit mode.
imap jk <ESC> 

nmap <C-n> :NERDTreeToggle<CR>
nmap <C-n><C-n> :set invrelativenumber<CR>
nmap <leader>t :hi Normal ctermbg=none<CR> :hi NonText ctermbg=none<CR>

set tabstop=4 shiftwidth=4 expandtab
set hls
set wildignore+=*/tmp/*,*/bin/*,*/target/*,*.so,*.swp,*.zip,*.class
set number
set relativenumber

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {    'dir':  '\v[\/]\.(git|hg|svn)$',    'file': '\v\.(exe|so|dll)$',    'link': 'some_bad_symbolic_links',    }

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#snapshot_file = "~/.tmux-statusline-colors.conf"


let g:airline_theme = 'murmur'

let g:tmuxline_preset = 'tmux'

"---------------------
"------Folding--------
"---------------------

let g:xml_syntax_folding = 1
"set foldmethod=syntax
