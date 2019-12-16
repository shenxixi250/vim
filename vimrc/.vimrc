set nocompatible
"关闭兼容模式 和 老版的vi不兼容"
filetype on
""识别不同的文件 比如java python就会语法高亮 
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
"ctrlp
"<Leader>p搜索当前目录下文件
let g:ctrlp_cmd = 'CtrlP'
"<Leader>f搜索MRU文件
nmap <c-f> :CtrlPMRUFiles<CR>
"<Leader>b显示缓冲区文件，并可通过序号进行跳转
"nmap cp :CtrlPBuffer<CR>
"设置搜索时忽略的文件
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_bottom = 1
"修改QuickFix窗口显示的最大条目数
let g:ctrlp_max_height = 15
let g:ctrlp_match_window_reversed = 0
"设置MRU最大条目数为500
let g:ctrlp_mruf_max = 500
let g:ctrlp_follow_symlinks = 1
"默认使用全路径搜索，置1后按文件名搜索，准确率会有所提高，可以用<C-d>进行切换
let g:ctrlp_by_filename = 1
"默认不使用正则表达式，置1改为默认使用正则表达式，可以用<C-r>进行切换
let g:ctrlp_regexp = 0
"自定义搜索列表的提示符
let g:ctrlp_line_prefix = '🌙'
"🌹🍀🍎💰📱🍁🍂🍃🌷💎🔫🏀⚽⚡💎👄🔥"👓🔒
"ctrl+p 收索文件"
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" 下面是相关的配置信息
let g:UltiSnipsExpandTrigger = "^"
let g:UltiSnipsJumpForwardTrigger = "^"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/plugged/vim-snippets/UltiSnips']

Plug 'tpope/vim-surround'
"同于改变 ‘nihao’  中那个'的符号
"
Plug 'kien/rainbow_parentheses.vim'

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 1
"自己启动
au VimEnter * RainbowParenthesesToggle
au VimEnter  * RainbowParenthesesLoadRound
au VimEnter  * RainbowParenthesesLoadSquare
au VimEnter  * RainbowParenthesesLoadBraces
Plug 'skywind3000/asyncrun.vim'
"很好的运行py
"说白了就是在vim中执行 shell的命令 然后是异步的方式
Plug 'jiangmiao/auto-pairs'
"成对删除括号"'
Plug 'scrooloose/nerdcommenter'
"批量注释"
",ca 在可选的注释之间切换
",cc 注释当强行
",cu 就是解除注释
",c<space>切换注释状态
",c$ 从光标到末尾
Plug 'nathanaelkane/vim-indent-guides'
" q清楚的显示缩进"

Plug 'airblade/vim-gitgutter'
"git"'
let g:gitgutter_override_sign_column_highlight = 0
set signcolumn=yes
let g:gitgutter_sign_allow_clobber = 1
let g:gitgutter_sign_added = '🍀'
let g:gitgutter_sign_modified = '⚡'
let g:gitgutter_sign_removed = '❌'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = 'ww'
hi GitGutterAdd      guifg=#003000 guibg=#33a333 gui=bold ctermfg=2 ctermbg=4
hi GitGutterChange   guifg=#000050 guibg=#0383f3 gui=bold ctermfg=3 ctermbg=4
hi GitGutterDelete   guifg=#000000 guibg=#a33333 gui=bold ctermfg=1 ctermbg=4
highlight GitGutterAdd ctermbg=Green
highlight GitGutterDelete ctermbg=Red
highlight GitGutterChange ctermbg=Yellow
Plug 'terryma/vim-smooth-scroll'
"平滑的滚动
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
Plug 'https://tpope.io/vim/repeat.git'
""解决。只映射最后一个命令 保证所有命令重复
Plug 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py"
" YCM config w UltiSnips, etc.
let g:clang_snippets_engine = "ultisnips"
let g:ycm_use_ultisnips_completer = 1
let g:ycm_key_list_select_completion = ['<tab>', '<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '!!' 
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_goto_buffer_command = 'horizontal-split'
nnoremap <leader>gd :YcmCompleter GoTo<CR>
"Plug 'python-mode/python-mode'
Plug 'easymotion/vim-easymotion'
"这个就是一下常用 的 跳转的用处了
""<leader><leader>s 搜索跳转
""<leader><leader>fFtT 搜索跳转
""<leader><leader>jk   行间跳转
""
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
" airline设置
" 显示颜色
set laststatus=2
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = '🙉'
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '🍁'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
Plug 'vim-scripts/ctags.vim'
""生成tags文件的命令参数太多了，我没有一一研究，也觉得没必要。就使用了参考资料中的命令，我看了下，基本够用了
""ctags -R –c++-kinds=+px –fields=+iaS –extra=+q .
""- R:ctags循环生成子目录的tags
""- –c++-kinds=+px ctags记录c++文件中的函数声明和各种外部和前向声明
""- –fields=+iaS ctags要求描述的信息，其中i表示如果有继承，则标识出父类；a表示如果元素是类成员的话，要标明其调用权限（即是public还是private）；S表示如果是函数，则标识函数的signature。
""- –extra=+q 强制要求ctags做如下操作—如果某个语法元素是类的一个成员，ctags默认会给其记录一行，可以要求ctags对同一个语法元素再记一行，这样可以保证在VIM中多个同名函数可以通过路径不同来区分。
Plug 'vim-scripts/taglist.vim'
"ctags 配置:F3快捷键显示程序中的各种tags，包括变量和函数等。
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidt=25 
Plug 'vim-scripts/The-NERD-tree'
let NERDTreeWinSize=25 
"vim中的缩进细线"
Plug 'vim-scripts/indentLine.vim' 
Plug 'w0ng/vim-hybrid' 
"启动界面 改变
Plug 'mhinz/vim-startify' 
Plug 'iamcco/markdown-preview.vim'
let g:mkdp_auto_start = 0 "let g:mkdp_auto_close = 1
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

"这是一个markdown的做表格的软件"
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
let g:table_mode_map_prefix = 't'
let mapleader = ","
let g:table_mode_corner = '|' 
let g:table_mode_delimiter = ' '
call plug#end()
"键盘命令
"实现使用Rename filename 来重命名文件  
let mapleader = ","
"markdown"
map <leader>m :MarkdownPreview<CR>
map <leader>dm :MarkdownPreviewStop<CR>
autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,z <Esc>/<td><CR>:nohlsearch<CR>lcit

autocmd Filetype markdown inoremap ,e ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ,r ****<Space><++><Esc>F*hi
autocmd Filetype markdown inoremap ,a ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,[ [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,] <A NAME=""><++></A> <++><Esc>F"i
autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,h ---<Enter>
""'autocmd Filetype markdown inoremap ,- <Esc>kyyp:.s/[^|]/-<CR>:nohlsearch<CR>
"快捷保存"
nmap <leader>w :w!<cr> 
" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y
 " 插入模式下实现光标移动
inoremap <C-o> <Esc>o<esc>I
nmap    wk  :resize +3<CR>
nmap    wj  :resize -3<CR>
nmap    wh  :vertical resize -3<CR>
nmap    wl  :vertical resize +3<CR>
""""""buffer""""""
" 映射切换buffer的mT
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
" 映射<leader>num到num buffer
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR> 
map <leader>6 :b 6<CR> 
map <leader>7 :b 7<CR> 
map <leader>8 :b 8<CR> 
map <leader>9 :b 9<CR> 

map <leader>d :bd<CR>
"查找后居中"
nmap zn nzz
nmap zN Nzz

map <leader>p :reg<cr>
imap <leader>p <esc>:reg<cr>
imap <c-v> <esc>"+p
"NERDTree 配置:F4快捷键显示当前目录树

map <leader>n :NERDTreeToggle<CR>

""i和s可以水平分割或纵向分割窗口打开文件，前面加g类似go的功能
"TlistToggle标签函数"
""I: 显示或者不显示隐藏文件
"使用m来做一下简单的文件操作"
"C将当前目录作为根节点
"x       合拢选中结点的父目录
""X       递归 合拢选中结点下的所有目录

"easymation的快捷键

map <leader>l :TlistToggle<CR>
" table的快捷键
"   o 在一个新打开的窗口中显示光标下tag
"   空格 （空格）显示光标下的tag的原型定义
"   u 更新taglist窗口中的tag
"   s 更改排序方式，在按名字排序和按出现顺序排序间切换
"   x taglist窗口放大和缩小，方便查看较长的tag
"   + 打开一个折叠，同zo
"   - 将tag折叠起来，同zc
"   * 打开所有的折叠，同zR
"   = 将所有tag折叠起来，同zM
"   [[ 跳到前一个文件
"   ]] 跳到后一个文件
"   q 关闭taglist窗口
map <LEADER>tm :TableModeToggle<CR>  
"这个就是这个插件自定义的一些快捷键用到的时候要知道
"   <Leader>tm table mode 开关
"   <Leader>tt 使用g:table_mode_delimiter定义的分隔符插入表格
"   <Leader>T 使用用户输入的分隔符插入表格
"   <Leader>tr 重新对齐
"   [| 移动到前一个表格
"   ]| 移动到下一个表格
"   || 插入表头边框
"   <Leader>tdd 删除一行
"   <Leader>tdc 删除一列
"Rename重命名文件"
:command! -nargs=1 Rename let tpname = expand('%:t') | saveas <args> | edit <args> | call delete(expand(tpname))
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " Quickly Run
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc() 
	exec "w" 
	if &filetype == 'c' 
		exec '!g++ % -o %<' 
		exec '!time ./%<' 
	elseif &filetype == 'cpp' 
		exec '!g++ % -o %<' 
		exec '!time ./%<' 
	elseif &filetype == 'python' 
		if search("@profile")
			exec "AsyncRun kernprof -l -v %"
			exec "copen"
			exec "wincmd p"
		elseif search("set_trace()")
			exec "!python3 %"
		else
			exec "AsyncRun -raw python3 %"
			exec "copen"
			exec "wincmd p"
		endif
	elseif &filetype == 'sh' 
		:!time bash % 
	elseif &filetype == 'java' 
		exec "!javac %" 
		exec "!java %<"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	endif 
endfunc 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全 
set completeopt=preview,menu 
"允许插件  
filetype plugin on
"共享剪贴板  
set clipboard=unnamed 
"从不备份  
set nobackup
"make 运行
:set makeprg=g++\ -Wall\ \ %
"自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" 设置在状态行显示的信息
set foldcolumn=0
set foldmethod=indent 
set foldlevel=3 
set foldenable              " 开始折叠
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 语法高亮
set syntax=on
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" 总是显示状态行
set laststatus=2
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件 
syntax enable
set background=dark
:colorscheme hybrid
" 修改配色

filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 为C程序提供自动缩进
set smartindent
" 高亮显示普通txt文件（需要txt.vim脚本）
 au BufRead,BufNewFile *  setfiletype txt
"自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endfunction
filetype plugin indent on 
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu

hi Normal ctermfg=252 ctermbg=none
"""""""""""""""""""""""""""""""""""""""""""""

au BufNewFile,BufRead *.py
\set tabstop=4
\set softtabstop=4
\set shiftwidth=4
\set expandtab=79
\set expandtab
\set autoindent
\set fileformat=unix

au BufNewFile,BufRead *.js,*.html,*.css
\set tabstop=2
\set softtabstop=2
\set shiftwidth=2

"可以显示py中的多余行和空白支付"

"function! AccentDemo()
  "let keys = ['a','b','c','d','e','f','g','h']
  "for k in keys
    "call airline#parts#define_text(k, k)
  "endfor
  "call airline#parts#define_accent('a', 'red')
  "call airline#parts#define_accent('b', 'green')
  "call airline#parts#define_accent('c', 'blue')
  "call airline#parts#define_accent('d', 'yellow')
  "call airline#parts#define_accent('e', 'orange')
  "call airline#parts#define_accent('f', 'purple')
  "call airline#parts#define_accent('g', 'bold')
  "call airline#parts#define_accent('h', 'italic')
  "let g:airline_section_a = airline#section#create(keys)
"endfunction
"autocmd VimEnter * call AccentDemo()
