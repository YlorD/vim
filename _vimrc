set nocompatible

execute pathogen#infect()

if exists("&autoread")
set autoread
endif

filetype on
filetype plugin on
filetype indent on

set helplang=cn

set magic



"通用设置------------------------------------------------------
set backspace=indent,eol,start
colo evening
sy on
set nobackup
set showmatch  "显示括号配对
set nu
set showcmd
set cursorline	"highlight current line
set autochdir    " 自动设置目录为正在编辑的文件所在的目录
set scrolloff=5
"set spell
"--------------------------------------------------------------



"以下是缩进相关------------------------------------------------
set autoindent  "自动缩进
set shiftwidth=4  "设定 << 和 >> 命令移动时的宽度为 4
set tabstop=4  "tab长度设为4
set softtabstop=4  "按退格键时可以一次删掉4个空格
set dy=lastline "显示最多行，不用@@
"--------------------------------------------------------------


"搜索相关--------------------------------------------------------
set hlsearch
set incsearch
set ignorecase
set smartcase
"----------------------------------------------------------------


"折叠相关------------------------------------------------------
"set foldenable              " 开始折叠
"set foldcolumn=0            " 设置折叠区域的宽度
"setlocal foldlevel=1        " 设置折叠层数为
"set foldclose=all           " 设置为自动关闭折叠
set foldmethod=syntax       " 设置语法折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
                            " 用空格键来开关折叠
"--------------------------------------------------------------


"gui设置-------------------------------------------------------
set go=		"无菜单、工具栏
set lines=32
set columns=96
set lbr
"if has("gui_running")
"	set nowrap
"	set guioptions+=b
"endif

"set shortmess=atI  "启动的时候不显示援助索马里儿童的提示
"set guioptions-=m   " 关闭菜单栏
"set guioptions-=T   " 关闭工具栏
"set guioptions-=l   " 关闭左边滚动条
"set guioptions-=L   " 关闭垂直分隔窗口左边滚动条
"set guioptions-=r   " 关闭右边滚动条
"set guioptions-=R   " 关闭垂直分隔窗口右边滚动条
"autocmd GUIEnter * simalt ~x  windows下启动vim最大化 
"----------------------------------------------------------------




"字符编码设置----------------------------------------------------
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

if has("win32")
set fileencoding=chinese
set termencoding=chinese

" 重新设定菜单和信息编码到utf-8
"set langmenu=zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8

else
set fileencoding=utf-8
endif
"------------------------------------------------------------

if exists("&ambiwidth")
set ambiwidth=double
endif

if has("win32")

	" 设定 windows 下 gvim 启动时最大化
    autocmd GUIEnter * simalt ~x
	"set guifont=Microsoft_YaHei_Mono:h12
	set guifont=DejaVu_Sans_Mono_for_Powerline:h12
else
	set guifont=Microsoft\ YaHei\ Mono\ 16
endif

set numberwidth=5	"行号使用的最小列数




"status
"-------------------------------------------------------------
set ruler	"Always show current position
set statusline=[%F][%{&fileencoding},%{&fileformat}]%y%r%m%*%=\ \ ASCII=\%b,HEX=\%B\ \ [Line:%l/%L,Column:%c][%p%%]
"set statusline+=[%2*0x%-8B]  " current char
set laststatus=2    " always show the status line


" 设置在状态行显示的信息如下：
" %f 当前的文件名
" %F 当前全路径文件名
" %m 当前文件修改状态
" %r 当前文件是否只读
" %Y 当前文件类型
" %{&fileformat}
" 当前文件编码
" %{&fileencoding}
" 中文编码
" %b 当前光标处字符的 ASCII 码值
" %B 当前光标处字符的十六进制值
" %l 当前光标行号
" %c 当前光标列号
" %V 当前光标虚拟列号 (根据字符所占字节数计算)
" %p 当前行占总行数的百分比
" %% 百分号
" %L 当前文件总行数
"-------------------------------------------------------------


"自动补齐
set wildmenu
imap <A-/> <C-n>
"set completeopt=menu,menuone,longest,preview


"C/C++
set cindent
set cino=:0g0t0(sus
 
ab #i #include
ab .i #include <iostream>
ab ..i #include <stdio.h>
ab ..b #include <stdlib.h>
ab ..s #include <string.h>
ab .u using namespace std;
ab .p printf("\n");
ab .m int main (int argc,char *argv[])<CR>{<CR><CR>}
ab .r return


imap <M-l> <esc>la
imap <M-h> <esc>ha
imap <M-j> <esc>ja
imap <M-k> <esc>ka

vmap <C-C> "+y
vmap <C-X> "+d
nmap <C-V>  "+gp
imap <C-V>  <esc>"+gpa
nmap <C-a> ggvG$

"tab mappings------------------------------------------------
map <M-1> 1gt
map <M-2> 2gt
map <M-3> 3gt
map <M-4> 4gt
map <M-5> 5gt
map <M-6> 6gt
map <M-7> 7gt
map <M-8> 8gt
map <M-9> 9gt
map <M-t> :tabnew<CR>
map <M-w> :tabclose<CR>
map! <M-1> <esc>1gt
map! <M-2> <esc>2gt
map! <M-3> <esc>3gt
map! <M-4> <esc>4gt
map! <M-5> <esc>5gt
map! <M-6> <esc>6gt
map! <M-7> <esc>7gt
map! <M-8> <esc>8gt
map! <M-9> <esc>9gt
map! <M-t> <esc>:tabnew<CR>
map! <M-w> <esc>:tabclose<CR>

map <C-TAB> :tabnext<CR>
"--------------------------------------------------------


map <C-F5> :!g++ % -o %<<CR>
imap <C-F5> <Esc>:update<CR><C-F5>
"map <C-F5> :!g++ -fexec-charset=gbk % -o %<<CR>
"map <C-F5> :!g++ -finput-charset=UTF-8 -fexec-charset=gbk % -o %<<CR>
map <F5> :!g++ -Wall -ggdb % -o %<<CR>
imap <F5> <Esc>:update<CR><F5>
map <C-F6> :!gcc % -o %<<CR>
map <F6> :!gcc -Wall -ggdb % -o %<<CR>
map <F7> :!gdb %<<CR>
if has("win32")
	map <F10> :!%:r.exe<CR>
else
	map <F10> :!./%:r<CR>
endif


 
" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <Esc>:update<CR>
inoremap <C-S> <Esc>:update<CR>


"2006-09-13 如下：保存视图
au BufWinLeave *.ztx mkview
au BufWinEnter *.ztx silent loadview
au BufNewFile,BufRead *.tx1 setf tx1


"plugins------------------------------------------------------------------------
"NERDTree-------------------------------
map <M-q> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks = 1
let NERDTreeBookmarksFile=$VIM.'\vim73\bundle\nerdtree-master\NerdBookmarks.txt'
"autocmd vimenter * NERDTree		"open NERDTree automatically when vim starts up
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif			"close vim if the only window left open is a NERDTree
"taglist---------------------------------
let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
"let Tlist_Auto_Open = 1
map <M-o> :Tlist<CR>
		"设置关闭和打开taglist窗口的快捷键
"vim-powerline---------------------------
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'unicode'
set t_Co=256
