set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 文本片段管理引擎插件
Plugin 'SirVer/ultisnips'
" 常用文本片段集合插件
Plugin 'honza/vim-snippets'

" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"


Plugin 'lervag/vimtex'

" 语法检查插件
"
Plugin 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" 括号插件: https://github.com/tpope/vim-surround
" http://zuyunfei.com/2013/04/17/killer-plugin-of-vim-surround/
Plugin 'tpope/vim-surround'

" 目录导航插件
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" let g:nerdtree_tabs_open_on_console_startup=1 "开启 nerdtree

" 提供模糊搜索的机制
" 1. 打开文件和buffer
" 2. 跳到 tags 获取帮助
" 3. 运行命令
Plugin 'wincent/command-t'

" 匹配插件
Plugin 'tmhedberg/matchit'

" Markdown 插件
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'


" 颜色主题插件 
Plugin 'altercation/vim-colors-solarized'

" Git 命令集成插件 
Plugin 'tpope/vim-fugitive'

" 状态和tab导航 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1


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
"
"

" more config 
set ts=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set ruler
set showcmd
set number
set nrformats=
set textwidth=80
set formatoptions+=mB
set linespace=6

" Add 'k' to the list to enable dictionary completion source
set complete+=k
set complete+=t
"autocmd FileType * execute 'setlocal dict+=~/.vim/words/'.&filetype.'.md'
set dict+=~/.vim/words/cmake.md
set dict+=~/.vim/words/why.md
set dict+=~/.vim/words/moab.md

set encoding=utf-8
set fileencodings=utf-8,GBK 

" Syntax highlighting and validate
syntax enable " syntax highlighting 

"forbiden generate swap file 
set noswapfile

cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'
nnoremap <F2>:set nonumber!<CR>:set foldcolumn=0<CR>


" Indent guides 
set cc=80
let g:indent_guides_guide_size=1


"autocmd VimEnter * iunmap <TAB>

nmap <F3> i<C-R>=strftime("%Y.%m.%d")<CR><Esc>
imap <F3> <C-R>=strftime("%Y.%m.%d")<CR>

nmap <F4> i<C-R>=strftime("%H:%M:%S")<CR><Esc>
imap <F4> <C-R>=strftime("%H:%M:%S")<CR>
