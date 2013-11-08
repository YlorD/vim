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



"ͨ������------------------------------------------------------
set backspace=indent,eol,start
colo evening
sy on
set nobackup
set showmatch  "��ʾ�������
set nu
set showcmd
set cursorline	"highlight current line
set autochdir    " �Զ�����Ŀ¼Ϊ���ڱ༭���ļ����ڵ�Ŀ¼
set scrolloff=5
"set spell
"--------------------------------------------------------------



"�������������------------------------------------------------
set autoindent  "�Զ�����
set shiftwidth=4  "�趨 << �� >> �����ƶ�ʱ�Ŀ��Ϊ 4
set tabstop=4  "tab������Ϊ4
set softtabstop=4  "���˸��ʱ����һ��ɾ��4���ո�
set dy=lastline "��ʾ����У�����@@
"--------------------------------------------------------------


"�������--------------------------------------------------------
set hlsearch
set incsearch
set ignorecase
set smartcase
"----------------------------------------------------------------


"�۵����------------------------------------------------------
"set foldenable              " ��ʼ�۵�
"set foldcolumn=0            " �����۵�����Ŀ��
"setlocal foldlevel=1        " �����۵�����Ϊ
"set foldclose=all           " ����Ϊ�Զ��ر��۵�
set foldmethod=syntax       " �����﷨�۵�
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
                            " �ÿո���������۵�
"--------------------------------------------------------------


"gui����-------------------------------------------------------
set go=		"�޲˵���������
set lines=32
set columns=96
set lbr
"if has("gui_running")
"	set nowrap
"	set guioptions+=b
"endif

"set shortmess=atI  "������ʱ����ʾԮ���������ͯ����ʾ
"set guioptions-=m   " �رղ˵���
"set guioptions-=T   " �رչ�����
"set guioptions-=l   " �ر���߹�����
"set guioptions-=L   " �رմ�ֱ�ָ�������߹�����
"set guioptions-=r   " �ر��ұ߹�����
"set guioptions-=R   " �رմ�ֱ�ָ������ұ߹�����
"autocmd GUIEnter * simalt ~x  windows������vim��� 
"----------------------------------------------------------------




"�ַ���������----------------------------------------------------
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

if has("win32")
set fileencoding=chinese
set termencoding=chinese

" �����趨�˵�����Ϣ���뵽utf-8
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

	" �趨 windows �� gvim ����ʱ���
    autocmd GUIEnter * simalt ~x
	"set guifont=Microsoft_YaHei_Mono:h12
	set guifont=DejaVu_Sans_Mono_for_Powerline:h12
else
	set guifont=Microsoft\ YaHei\ Mono\ 16
endif

set numberwidth=5	"�к�ʹ�õ���С����




"status
"-------------------------------------------------------------
set ruler	"Always show current position
set statusline=[%F][%{&fileencoding},%{&fileformat}]%y%r%m%*%=\ \ ASCII=\%b,HEX=\%B\ \ [Line:%l/%L,Column:%c][%p%%]
"set statusline+=[%2*0x%-8B]  " current char
set laststatus=2    " always show the status line


" ������״̬����ʾ����Ϣ���£�
" %f ��ǰ���ļ���
" %F ��ǰȫ·���ļ���
" %m ��ǰ�ļ��޸�״̬
" %r ��ǰ�ļ��Ƿ�ֻ��
" %Y ��ǰ�ļ�����
" %{&fileformat}
" ��ǰ�ļ�����
" %{&fileencoding}
" ���ı���
" %b ��ǰ��괦�ַ��� ASCII ��ֵ
" %B ��ǰ��괦�ַ���ʮ������ֵ
" %l ��ǰ����к�
" %c ��ǰ����к�
" %V ��ǰ��������к� (�����ַ���ռ�ֽ�������)
" %p ��ǰ��ռ�������İٷֱ�
" %% �ٷֺ�
" %L ��ǰ�ļ�������
"-------------------------------------------------------------


"�Զ�����
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


"2006-09-13 ���£�������ͼ
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
let Tlist_Show_One_File = 1            "ֻ��ʾ��ǰ�ļ���taglist��Ĭ������ʾ���
let Tlist_Exit_OnlyWindow = 1          "���taglist�����һ�����ڣ����˳�vim
let Tlist_Use_Right_Window = 1         "���Ҳര������ʾtaglist
let Tlist_GainFocus_On_ToggleOpen = 1  "��taglistʱ����걣����taglist����
"let Tlist_Auto_Open = 1
map <M-o> :Tlist<CR>
		"���ùرպʹ�taglist���ڵĿ�ݼ�
"vim-powerline---------------------------
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'unicode'
set t_Co=256
