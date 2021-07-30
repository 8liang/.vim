" 自动安装vim-plug
let data_dir = '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" 不使用vi兼容命令
set nocompatible
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 字体设置
set gfn=Literation\ Mono\ Powerline:h14
" 配色方案
colorscheme gnail
" Plugins 会安装到以下指定目录.
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'mattn/emmet-vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 开启文件类型侦测
filetype on
" 自适应不同语言的智能缩进
filetype indent on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 根据文件类型决定缩进
filetype plugin indent on
" 将制表符扩展为空格
set expandtab
" 根据文件中其他地方的缩进空格个数来确定一个tab是多少个空格
set smarttab
" 编辑时tab占多少个空格
set tabstop=2
" 显示时一个tab占多少空格
set shiftwidth=2
" 继承前一行缩进量
set autoindent
" 智能缩进
set smartindent
" 显示行号
set number
" 高亮显示当前行
set cursorline
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap
" 搜索时大小写不敏感
set ignorecase
" 基于缩进或语法进行代码折叠
set foldmethod=syntax "indent
" 启动 vim 时关闭折叠代码
set nofoldenable
" 自动进入文件所在目录
set autochdir
" 全屏
" set fu
" Leader 键
let mapleader=","
" map <Leader> <Plug>(easymotion-prefix)

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p

" 设置取消高亮快捷键
nmap <Leader>nh :noh<CR>
" 设置NERDTree 快捷键
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" 关闭补全预览
set completeopt-=preview
