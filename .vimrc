" .vimrc - Vim configuration file.
"
" Copyright (c) 2010 Jeffy Du. All Rights Reserved.
"
" Maintainer: Jeffy Du <jeffy.du@gmail.com>
"    Created: 2010-01-01
" LastChange: 2010-04-22
" {{{1
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
func SetTitle() 
	if &filetype == 'sh' 
		call setline(1,"\#########################################################################") 
		call append(line("."), "\# File Name: ".expand("%")) 
		call append(line(".")+1, "\# Author: caofei") 
		call append(line(".")+2, "\# mail: caofei_lexue@163.com") 
		call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
		call append(line(".")+4, "\#########################################################################") 
		call append(line(".")+5, "\#!/bin/bash") 
		call append(line(".")+6, "") 
	else 
		"call setline(1, "/************************************************************************") 
		"call append(line("."), "	> File Name: ".expand("%")) 
		"call append(line(".")+1, "	> Author: caofei") 
		"call append(line(".")+2, "	> Mail: caofei_lexue@163.com") 
		"call append(line(".")+3, "	> Created Time: ".strftime("%c")) 
		"call append(line(".")+4, "***********************************************************************/") 
		"call append(line(".")+5, "")
		call setline(1, "/*") 
		call append(line("."), " * Copyright (c) 2010-2020, Flexem Technologies Inc") 
		call append(line(".")+1, " * All rights reserved.") 
		call append(line(".")+2, " * Redistribution and use in source and binary forms, with or without modification,") 
		call append(line(".")+3, " * are permitted (subject to the limitations in the disclaimer below) provided that") 
		call append(line(".")+4, " * the following conditions are met:") 
		call append(line(".")+5, " * ") 
		call append(line(".")+6, " * Redistributions of source code must retain the above copyright notice, this list") 
		call append(line(".")+7, " * of conditions and the following disclaimer.") 
		call append(line(".")+8, " * ") 
		call append(line(".")+9, " * Redistributions in binary form must reproduce the above copyright notice, this") 
		call append(line(".")+10, " * list of conditions and the following disclaimer in the documentation and/or") 
		call append(line(".")+11, " * other materials provided with the distribution.") 
		call append(line(".")+12, " * ") 
		call append(line(".")+13, " * Neither the name of FlexEm Technologies Inc nor the names of its contributors") 
		call append(line(".")+14, " * may be used to endorse or promote products derived from this software without") 
		call append(line(".")+15, " * specific prior written permission.") 
		call append(line(".")+16, " * ") 
		call append(line(".")+17, " * NO EXPRESS OR IMPLIED LICENSES TO ANY PARTY'S PATENT RIGHTS ARE GRANTED BY THIS") 
		call append(line(".")+18, " * LICENSE. THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS") 
		call append(line(".")+19, " * 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,") 
		call append(line(".")+20, " * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE") 
		call append(line(".")+21, " * ") 
		call append(line(".")+22, " * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE") 
		call append(line(".")+23, " * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL") 
		call append(line(".")+24, " * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR") 
		call append(line(".")+25, " * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER") 
		call append(line(".")+26, " * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,") 
		call append(line(".")+27, " * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE") 
		call append(line(".")+28, " * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.") 
		call append(line(".")+29, " * ") 
		call append(line(".")+30, " */") 
		call append(line(".")+31, "") 
	endif
	if &filetype == 'c'
		call append(line(".")+32, "#include <stdio.h>")
		call append(line(".")+33, "")
	endif
	if &filetype == 'cpp'
		call append(line(".")+32, "#include <iostream>")
		call append(line(".")+33, "using namespace std;")
		call append(line(".")+34, "")
	endif
	"	if &filetype == 'java'
	"		call append(line(".")+6,"public class ".expand("%"))
	"		call append(line(".")+7,"")
	"	endif
	"新建文件后，自动定位到文件末尾
	autocmd BufNewFile * normal G
endfunc 

" GENERAL SETTINGS: {{{1
" To use VIM settings, out of VI compatible mode.
set nocompatible
" Enable file type detection.
filetype plugin indent on
" Syntax highlighting.
syntax on
" Setting colorscheme
color mycolor
" Other settings.

set fdm=manual
set csprg=/usr/bin/cscope
set   autoindent            "打开自动缩进
set   autoread
set   autowrite
set   background=dark
set   backspace=indent,eol,start
set   nobackup
set   cindent
set   cinoptions=:0
set   cursorline
set   completeopt=longest,menuone
set   fileencodings=utf-8,gb2312,gbk,gb18030
set   fileformat=unix
set   foldenable
set   foldmethod=marker
set   guioptions-=T
set   guioptions-=m
set   guioptions-=r
set   guioptions-=l
set   helpheight=10
set   helplang=cn
set   hidden
set   history=100
set   hlsearch
set   ignorecase
set   incsearch               "高亮显示搜索结果
set   laststatus=2
set   mouse=a
set   number
set   pumheight=10
set   ruler   
set   scrolloff=5
set   showcmd
set   smartindent             "打开只能缩进
set   smartcase
set   termencoding=utf-8
set   textwidth=80
set   whichwrap=h,l
set   wildignore=*.bak,*.o,*.e,*~
set   wildmenu                "设置光标当前位置
set   wildmode=list:longest,full
set   nowrap
"set   showmatch               "设置括号匹配

"缩进
set   tabstop=4               "按一个tab之后,标识几个空格
set   softtabstop=4           "编译模式下按退格建的时候退回缩进的长度
set   shiftwidth=4            "设置自动对齐空格数
set   expandtab               "缩进用空格表示
"set   noexpandtab            "用制表符标识一个缩进

" AUTO COMMANDS: {{{1
" auto expand tab to blanks
" autocmd FileType c,cpp set expandtab
" Restore the last quit position when open file.
autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\     exe "normal g'\"" |
			\ endif
set  list lcs=tab:\¦\ 

" SHORTCUT SETTINGS: {{{1
" Set mapleader
let mapleader=","
" Space to command mode.
nnoremap <space> :
vnoremap <space> :
" Switching between buffers.
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
inoremap <C-h> <Esc><C-W>h
inoremap <C-j> <Esc><C-W>j
inoremap <C-k> <Esc><C-W>k
inoremap <C-l> <Esc><C-W>l
" "cd" to change to open directory.
let OpenDir=system("pwd")
nmap <silent> <leader>cd :exe 'cd ' . OpenDir<cr>:pwd<cr>

" PLUGIN SETTINGS: {{{1
" taglist.vim
let g:Tlist_Auto_Update=1
let g:Tlist_Process_File_Always=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_Show_One_File=1
let g:Tlist_WinWidth=25
let g:Tlist_Enable_Fold_Column=0
let g:Tlist_Auto_Highlight_Tag=1
let g:Tlist_File_Fold_Auto_Close=1
let g:Tlist_Auto_Open=1

"indentLine.vim
let g:indentLine_enabled=1
let g:indentLine_char = '┊'

" NERDTree.vim
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeQuitOnOpen=1
"let g:NERDTreeShowBookmarks=1
"autocmd VimEnter * NERDTree

" cscope.vim
	set cscopequickfix=s-,c-,d-,i-,t-,e-
	set csto=1
	set cst
	set nocsverb
	cs add /home/dev/workspace/fcs-fbox/cscope.out
	"cs add /home/dev/workspace/FEMQTT_1.1/cscope.out           
	set csverb

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" OmniCppComplete.vim
let g:OmniCpp_DefaultNamespaces=["std"]
let g:OmniCpp_MayCompleteScope=1
let g:OmniCpp_SelectFirstItem=2
" VimGDB.vim
if has("gdb")
	set asm=0
	let g:vimgdb_debug_file=""
	run macros/gdb_mappings.vim
endif
" LookupFile setting
let g:LookupFile_TagExpr='"./tags.filename"'
let g:LookupFile_MinPatLength=2
let g:LookupFile_PreserveLastPattern=0
let g:LookupFile_PreservePatternHistory=1
let g:LookupFile_AlwaysAcceptFirst=1
let g:LookupFile_AllowNewFiles=0
" Man.vim
source $VIMRUNTIME/ftplugin/man.vim
" plugin shortcuts
function! RunShell(Msg, Shell)
	echo a:Msg . '...'
	call system(a:Shell)
	echon 'done'
endfunction
"nmap <C-H> <C-W>h 
"nmap <C-J> <C-W>j 
"nmap <C-K> <C-W>k 
"nmap <C-L> <C-W>l 

nmap  <F2> :TlistToggle<cr>
nmap  <F3> :NERDTreeToggle<cr>
nmap  <F4> :MRU<cr>
nmap  <F5> <Plug>LookupFile<cr>
nmap  <F6> :vimgrep /<C-R>=expand("<cword>")<cr>/ **/*.c **/*.h<cr><C-o>:cw<cr>
nmap  <F8> :SrcExplToggle<cr>
"nmap  <F9> :call RunShell("Generate tags", "ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .")<cr>
nmap <F10> :call HLUDSync()<cr>
"nmap <F11> :call RunShell("Generate filename tags", "~/.vim/shell/genfiletags.sh")<cr>
"nmap <F12> :call RunShell("Generate cscope", "cscope -Rb")<cr>:cs add cscope.out<cr>
nmap <leader>a :cs add cscope.out<cr>
nmap <leader>s :cs find s <C-R>=expand("<cword>")<cr><cr>
nmap <leader>g :cs find g <C-R>=expand("<cword>")<cr><cr>
nmap <leader>c :cs find c <C-R>=expand("<cword>")<cr><cr>
nmap <leader>t :cs find t <C-R>=expand("<cword>")<cr><cr>
nmap <leader>e :cs find e <C-R>=expand("<cword>")<cr><cr>
nmap <leader>f :cs find f <C-R>=expand("<cfile>")<cr><cr>
nmap <leader>i :cs find i <C-R>=expand("<cfile>")<cr><cr>
nmap <leader>d :cs find d <C-R>=expand("<cword>")<cr><cr>
nmap <leader>zz <C-w>o
nmap <leader>gs :GetScripts<cr>

:set tags=/home/dev/workspace/fcs-fbox/tags
":set tags=/home/dev/workspace/FEMQTT_1.1/tags
:set tags=/home/dev/FEMQTT_1.1/tags
":set tags=/home/dev/MQTT1.0/NJ_MQTT/tags
":set tags=/home/dev/MQTT1.0/GY_MQTT/mqtt_fbox/tags
":set tags=/home/dev/MQTT1.0/FEMQTT/mqtt_fbox/tags
