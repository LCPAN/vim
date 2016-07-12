"因为我用了 fish ，所以必须在 vim 里手动指定一个兼容 shell，否则一些插件会报错
set shell=/bin/bash 

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/Vundle.vim/
"call vundle#rc()
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"The following are examples of different formats supported.
"Keep Plugin commands between vundle#begin/end.
"plugin on GitHub repo
Plugin 'adah1972/fencview'
Plugin 'bling/vim-airline'
Plugin 'dyng/ctrlsf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'msanders/snipmate.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors' 
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'xolox/vim-misc'
"Plugin 'tomasr/molokai'
"Plugin 'mbbill/echofunc'
"Plugin 'Shougo/vimshell.vim'
"Plugin 'vim-scripts/grep.vim'
"Plugin 'WolfgangMehner/c.vim'
"Plugin 'tomtom/quickfixsigns_vim'
"Plugin 'altercation/vim-colors-solarized'

"plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'pyte'
Plugin 'Gundo'
Plugin 'a.vim'
Plugin 'proton'
Plugin 'taglist.vim'
Plugin 'AutoComplPop'
"Plugin 'DoxygenToolkit.vim'
"Plugin 'OmniCppComplete'

"All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
"To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

 " 定义快捷键的前缀，即<Leader>
 let mapleader=";"

"assuming you want to use snipmate snippet engine
  "ActivateAddons vim-snippets snipmate

"aireline setting
 set laststatus=2
 set guifont=DejaVu\ Sans\ Mono\ for\ Powerline
 "let g:airline_detect_whitespace = 0 "关闭空白符检测
 let g:airline#extensions#tabline#enabled = 1 "顶部tab栏显示
 "let g:airline_theme = 'bubblegum' "设定主题
 "let g:airline_theme = 'badwolf' "设定主题
 "let g:airline_theme = 'luna' "设定主题
 let g:airline_theme = 'molokai'
 "let g:airline_theme = 'sol'
 "let g:airline_theme = 'murmur'
 "let g:airline_theme = 'hybridline'
 "let g:airline_theme = 'papercolor'
 "let g:airline_theme = 'understated'
 "let g:airline_theme = 'wombat'
 set t_Co=256
 "let g:airline_section_b = '%{strftime("%c")}'
 "let g:airline_section_y = 'BN: %{bufnr("%")}'
 "tabline中当前buffer两端的分隔字符
 let g:airline#extensions#tabline#left_sep = '◀'
 "tabline中未激活buffer两端的分隔字符
 let g:airline#extensions#tabline#left_alt_sep = '|'
 "tabline中buffer显示编号
 let g:airline_detect_paste=1
 let g:airline#extensions#tavline#enabled = 1
 let g:airline#extensions#tabline#buffer_nr_show = 1
 let g:airline#extensions#tabline#buffer_idx_mode = 1
 nmap <leader>1 <Plug>AirlineSelectTab1
 nmap <leader>2 <Plug>AirlineSelectTab2
 nmap <leader>3 <Plug>AirlineSelectTab3
 nmap <leader>4 <Plug>AirlineSelectTab4
 nmap <leader>5 <Plug>AirlineSelectTab5
 nmap <leader>6 <Plug>AirlineSelectTab6
 nmap <leader>7 <Plug>AirlineSelectTab7
 nmap <leader>8 <Plug>AirlineSelectTab8
 nmap <leader>9 <Plug>AirlineSelectTab9

"NerdTree
 map <F3> :NERDTreeMirror<CR>
 map <F3> :NERDTreeToggle<CR>

"taglist
 map <F10> :TlistToggle<CR> 
 "let Tlist_Use_SingleClick=1
 let Tlist_Use_Right_Window=1
 let Tlist_File_Fold_Auto_Close=1
 "let Tlist_Show_One_File=1 
 "let Tlist_Exit_OnlyWindow=1
 
""onmicppcompete
 "set nocp    
 "filetype plugin on 
 "set completeopt=menu,menuone
 "let OmniCpp_MayCompleteDot=1  " 打开. 操作符
 "let OmniCpp_MayCompleteArrow=1  "打开->操作符
 "let OmniCpp_MayCompleteScope=1  "打开:: 操作符
 "let OmniCpp_NamespaceSearch=1   "打开命名空间
 "let OmniCpp_GlobalScopeSearch=1 
 "let OmniCpp_DefaultNamespace=["std"]
 "let OmniCpp_ShowPrototypeInAbbr=1  "打开显示函数原型
 "let OmniCpp_SelectFirstItem = 2 "自动弹出时自动跳至第一个

"vim-easymotion
"nmap <Leader>fc <Leader><Leader>f
"nmap <Leader>wd <Leader><Leader>w

"ctrlsf
 let g:ctrlsf_ackprg = 'ag' 
 let g:ctrlsf_position = 'bottom'
 let g:ctrlsf_winsize = '30%'
 let g:ctrlsf_mapping = {
     \ "next": "n",
     \ "prev": "N",
     \ }
 nmap     <C-F>f <Plug>CtrlSFPrompt <C-R>=expand("<cword>")<CR><CR> 
 vmap     <C-F>f <Plug>CtrlSFVwordPath <C-R>=expand("<cword>")<CR><CR> 
 vmap     <C-F>F <Plug>CtrlSFVwordExec <C-R>=expand("<cword>")<CR><CR> 
 nmap     <C-F>n <Plug>CtrlSFCwordPath <C-R>=expand("<cword>")<CR><CR> 
 nmap     <C-F>p <Plug>CtrlSFPwordPath <C-R>=expand("<cword>")<CR><CR> 
 nnoremap <C-F>o :CtrlSFOpen<CR>
 nnoremap <C-F>t :CtrlSFToggle<CR>
 inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
 nmap     <C-F>l <Plug>CtrlSFQuickfixPrompt <C-R>=expand("<cword>")<CR><CR> 
 vmap     <C-F>l <Plug>CtrlSFQuickfixVwordPath <C-R>=expand("<cword>")<CR><CR> 
 vmap     <C-F>L <Plug>CtrlSFQuickfixVwordExec <C-R>=expand("<cword>")<CR><CR> 

"A
 "*.cpp 和 *.h 间切换
 nmap <Leader>ch :A<CR>
 "子窗口中显示 *.cpp 或 *.h
 nmap <Leader>sch :AS<CR>"
 
"Undotree
 if has("persistent_undo")
    set undodir='~/.undodir/'
    set undofile
 endif
 nnoremap <Leader>gut :GundoToggle<CR>
 nnoremap <Leader>un :u<CR>
 nnoremap <Leader>re <C-R><CR>
 "let g:gundo_disable = 1
 
 "fencview
 let g:fencview_autodetect=1
 map <F2> :FencView<CR>

"Grep
" nnoremap <silent> <F5> :Grep<CR>

"cscope
 "set autochdir
 "cscope add /home/lcp/program/ti/lib
 cscope add .
 nnoremap <silent> <F12> :!cscope -Rbq <CR>:cscope reset<CR>
 nnoremap <leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR>
 nnoremap <Leader>fg :cs find g <C-R>=expand("<cword>")<CR><CR>
 nnoremap <Leader>fc :cs find c <C-R>=expand("<cword>")<CR><CR>
 nnoremap <Leader>ft :cs find t <C-R>=expand("<cword>")<CR><CR>
 nnoremap <Leader>fe :cs find e <C-R>=expand("<cword>")<CR><CR>
 nnoremap <Leader>ff :cs find f <C-R>=expand("<cfile>")<CR><CR>
 nnoremap <Leader>fi :cs find i <C-R>=expand("<cfile>")<CR><CR>
 nnoremap <Leader>fd :cs find d <C-R>=expand("<cword>")<CR><CR>
 nmap <Leader>ba <C-T>

 nmap <Leader>cma :!cmake CMakeLists.txt<CR>
 nmap <Leader>ma :wa<CR>:make<CR><CR>:cw<CR>
 nmap <Leader>run :wa<CR>:make<CR><CR>:cw<CR>
 "nmap <Leader>gu guwe
 "nmap <Leader>gU gUwe

" 依次遍历子窗口
 nnoremap nw <C-W><C-W>
"跳转至右方的窗口
 nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
 nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
 nnoremap <Leader>kw <C-W>k
"跳转至下方的子窗口
 nnoremap <Leader>jw <C-W>j
"定义快捷键在结对符之间跳转，助记pair
 nmap <Leader>pa %
"定义快捷键保存当前窗口内容
 nmap <Leader>wt :w<CR>
 nmap <Leader>qt :q<CR>
 nmap <Leader>wq :wq<CR>
" 定义快捷键保存所有窗口内容并退出 vim
 nmap <Leader>WQ :wa<CR>:q<CR>
"不做任何保存，直接退出 vim
 nmap <Leader>Q :qa!<CR>
 nmap <Leader>zz ZZ
"切换到下一个缓冲区
 nmap <Leader>bn :bn<CR>
"切换到上一个缓冲区
 nmap <Leader>bp :bp<CR>

 "inoremap <Leader>[ <ESC>

"基于缩进或语法进行代码折叠
 "set foldmethod=indent
 set foldmethod=syntax

 " 启动 vim 时关闭折叠代码
 set nofoldenable

 "make的设置
 map <silent> <F6> :call Do_make()<CR><C-L>
 map <silent> <C-F6> :make clean<CR>
 "map <silent> <F7> :silent !make clean<CR><C-L>
 function Do_make()
	set makeprg=make
	execute "silent make"
	execute "copen"
 endfunction

 " 更新vimrc
 nmap <Leader>re :source $HOME/.vimrc<CR>
 " 编辑_vimrc
 nmap <Leader>ev :e $HOME/.vimrc<CR>

 noremap <silent> <expr> j (v:count == 0 ? 'gj':'j')
 noremap <silent> <expr> k (v:count == 0 ? 'gk':'k')

 syntax enable
 "设置（软）制表符宽度为4
 set tabstop=4 
 set et
 set softtabstop=4
 "设置缩进的空格数为4
 set shiftwidth=4
 set smartindent   " 开启新行时使用智能自动缩进"
 "设置使用 C/C++ 语言的自动缩进方式
 "set cindent
 "开启行号显示
 set number
 "使用相对行号
 set relativenumber
 
 "colorschem molokai
 colorschem pyte
 "colorschem proton
 "colorscheme delek
