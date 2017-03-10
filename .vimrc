"  < Vundle 插件管理工具配置 >
" -----------------------------------------------------------------------------
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
set nocompatible                                      "禁用 Vi 兼容模式
filetype off                                          "禁用文件类型侦测

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" 使用Vundle来管理插件，这个必须要有。
Bundle 'gmarik/vundle'

" 以下为要安装或更新的插件，不同仓库都有（具体书写规范请参考帮助）
Bundle 'taglist.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'alvan/vim-closetag'
Bundle 'matchit.zip'
Bundle 'AutoComplPop'
Bundle 'othree/html5.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'itchyny/lightline.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'aperezdc/vim-template'
Bundle 'Raimondi/delimitMate'
Bundle 'nanotech/jellybeans.vim'
Bundle 'KurtPreston/vim-autoformat-rails'
Bundle 'bsdelf/bufferhint'
Bundle 'Shougo/neocomplete'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'
Bundle 'Yggdroot/indentLine'
Bundle 'tpope/vim-ragtag'
Bundle 'will133/vim-dirdiff'
Bundle 'vim-scripts/JavaScript-Indent'

" -----------------------------------------------------------------------------
"  < 编码配置 >
" -----------------------------------------------------------------------------
" 注：使用utf-8格式后，软件与程序源码、文件路径不能有中文，否则报错
set encoding=utf-8                                    "设置gvim内部编码，默认不更改
set fileencoding=utf-8                                "设置当前文件编码，可以更改，如：gbk（同cp936）
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1     "设置支持打开的文件的编码

" 文件格式，默认 ffs=dos,unix
set fileformat=unix                                   "设置新（当前）文件的<EOL>格式，可以更改，如：dos（windows系统常用）
set fileformats=unix,dos,mac                          "给出文件的<EOL>格式类型

" -----------------------------------------------------------------------------
"  < 编写文件时的配置 >
" -----------------------------------------------------------------------------
filetype on                                           "启用文件类型侦测
filetype plugin on                                    "针对不同的文件类型加载对应的插件
filetype plugin indent on                             "启用缩进
set smartindent                                       "启用智能对齐方式
set expandtab                                         "将Tab键转换为空格
set tabstop=4                                         "设置Tab键的宽度，可以更改，如：宽度为2
set shiftwidth=4                                     "换行时自动缩进宽度，可更改（宽度同tabstop）
set smarttab                                          "指定按一次backspace就删除shiftwidth宽度

" 当文件在外部被修改，自动更新该文件
set autoread

" autocmd! bufwritepost _vimrc source % " vimrc文件修改之后自动加载。 windows。
" autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载。 linux。

set ignorecase                                        "搜索模式里忽略大小写
set smartcase                                         "如果搜索模式包含大写字符，不使用 'ignorecase' 选项，只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用

" -----------------------------------------------------------------------------
"  < 界面配置 >
" -----------------------------------------------------------------------------
set mouse=a                    " 在任何模式下启用鼠标
set t_Co=256                   " 在终端启用256色
set backspace=2                " 设置退格键可用
set number                                            "显示行号
set laststatus=2                                      "启用状态栏信息
set cmdheight=2                                       "设置命令行的高度为2，默认为1
set cursorline                                        "突出显示当前行
set cursorcolumn                                      "高亮当前列
set guifont=Monaco:h14                 "设置字体:字号（字体名称空格用下划线代替）
set nowrap                                            "设置不自动换行
set shortmess=atI                                     "去掉欢迎界面
" set gcr=a:block-blinkoff0

"禁止显示滚动
if has("gui_running")

    set lines=999 columns=999           "全屏
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R

    set winaltkeys=no
    set macmeta
    noremap <silent><c-tab> :tabprev<CR>
    inoremap <silent><c-tab> <ESC>:tabprev<CR>
    noremap <silent><m-1> :tabn 1<cr>
    noremap <silent><m-2> :tabn 2<cr>
    noremap <silent><m-3> :tabn 3<cr>
    noremap <silent><m-4> :tabn 4<cr>
    noremap <silent><m-5> :tabn 5<cr>
    noremap <silent><m-6> :tabn 6<cr>
    noremap <silent><m-7> :tabn 7<cr>
    noremap <silent><m-8> :tabn 8<cr>
    noremap <silent><m-9> :tabn 9<cr>
    noremap <silent><m-0> :tabn 10<cr>
    inoremap <silent><m-1> <ESC>:tabn 1<cr>
    inoremap <silent><m-2> <ESC>:tabn 2<cr>
    inoremap <silent><m-3> <ESC>:tabn 3<cr>
    inoremap <silent><m-4> <ESC>:tabn 4<cr>
    inoremap <silent><m-5> <ESC>:tabn 5<cr>
    inoremap <silent><m-6> <ESC>:tabn 6<cr>
    inoremap <silent><m-7> <ESC>:tabn 7<cr>
    inoremap <silent><m-8> <ESC>:tabn 8<cr>
    inoremap <silent><m-9> <ESC>:tabn 9<cr>
    inoremap <silent><m-0> <ESC>:tabn 10<cr>
endif

" 设置代码配色方案
" colorscheme molokai_dark              "终端配色方案
colorscheme jellybeans              "终端配色方案
" let g:rehash=256

" =============================================================================
"                          << 以下为常用自动命令配置 >>
" =============================================================================

" 自动切换目录为当前编辑文件所在目录
au BufRead,BufNewFile,BufEnter * cd %:p:h

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set helplang=cn

set hlsearch        "高亮搜索
set incsearch       "在输入要搜索的文字时，实时匹配

"启动最大化
" au GUIEnter * simalt ~x

" history文件中需要记录的行数
set history=1000

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 与windows共享剪贴板
set clipboard+=unnamed
" 与mac共享剪切板
" vmap "+y :w !pbcopy<CR><CR>
" nmap "+p :r !pbpaste<CR><CR>

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on

" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 语法高亮
syntax on

"浅色高亮当前行
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

"显示输入的命令
set showcmd

set magic                   " 设置魔术

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不要备份文件（根据自己需要取舍）
set nobackup

" 不要生成swap文件，当buffer被丢弃的时候隐藏它
set noswapfile
set bufhidden=hide

" 字符间插入的像素行数目
set linespace=2

" 增强模式中的命令行自动完成操作
set wildmenu

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界
" set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 不让vim发出讨厌的滴滴声
set noerrorbells
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示匹配的括号
set showmatch
set matchtime=1

" 输入:set list命令是应该显示些啥？
" set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$
set listchars=tab:\|\ ,extends:>,precedes:<
" set list


" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 不要闪烁
set novisualbell

" 总是显示状态行
set laststatus=2

"Ctags设置
set tags=./tags
set autochdir
"autocmd VimEnter * silent !ctags -R
map <F9> :!ctags -R<CR>
autocmd VimLeavePre * call DelTags()
function! DelTags()
    if exists("tags")
        silent !del /F /Q tags
        echo 'a'
    endif
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
set cindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 只在下列文件类型被侦测到的时候显示行号，普通文本文件不显示

if has("autocmd")
    autocmd FileType xml,html,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby set number
    autocmd FileType xml,html vmap 'o'>o-->
    autocmd FileType java,c,cpp,cs vmap '
    autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=100
    autocmd Filetype html,xml,xsl,*.erb source ~/.vim/bundle/vim-closetag/plugin/closetag.vim
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ exe " normal g`\"" |
                \ endif
endif "has("autocmd")
autocmd BufRead *.erb set filetype=eruby

" 用空格键来开关折叠
set foldmethod=indent
set foldnestmax=9
set foldlevel=1

" 常规模式下用空格键来开关光标行所在折叠（注：zR 展开所有折叠，zM 关闭所有折叠）
" nnoremap <space> @=((foldclosed(line('.')) <0) ? 'zc' : 'zo')<CR>

autocmd BufNewFile,BufRead * setlocal nofoldenable "新打开文件，不折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"插件管理
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"启动默认NerdTree开启
"au VimEnter * NERDTree
"wincmd w
"autocmd VimEnter * wincmd w
let g:NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 25
map <F3> :NERDTreeToggle<CR>


"taglist管理
let Tlist_Show_One_File=1                   "只显示当前文件的tags
let Tlist_Enable_Fold_Column=0              "使taglist插件不显示左边的折叠行
let Tlist_Exit_OnlyWindow=1                 "如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_File_Fold_Auto_Close=1            "自动折叠
let Tlist_WinWidth=30                       "设置窗口宽度
let Tlist_Use_Right_Window=1                "在右侧窗口中显示
map <F2> :TlistToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""快捷键设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F12> gg=G
"文件切换快捷键
imap jj <esc>

" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap w= :resize +10<CR>
nmap w- :resize -10<CR>
nmap w, :vertical resize +10<CR>
nmap w. :vertical resize -10<CR>

nmap `` \==

"mutliple hot-key
set selection=inclusive

" <enter> popup menu select first item
inoremap <expr><CR>
            \ pumvisible() ? "\<C-y>" : "\<CR>"

"template
let g:email='693879111@qq.com'
let g:username='libaoxi'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim bufferhint
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap - :call bufferhint#Popup()<CR>
nnoremap \ :call bufferhint#LoadPrevious()<CR>

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB>
            \ pumvisible() ? "\<C-n>" :
            \ neosnippet#expandable_or_jumpable() ?
            \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif
