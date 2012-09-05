

set showcmd
set nu
set ruler
set nocompatible
set foldmethod=syntax
set completeopt=longest,menu
filetype off "required
let mapleader=";"
syntax on
filetype plugin indent on
filetype indent on 



set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"let Vundle manage vundle
Bundle 'gmarik/vundle'
Bundle 'othree/html5.vim'
Bundle 'ZenCoding.vim'

"vim-snipmate
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'
Bundle 'garbas/vim-snipmate'

Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/vim-statline'
Bundle 'Visual-Mark'
Bundle 'c.vim'
"colorscheme
Bundle 'desert-warm-256'
Bundle 'gmarik/ingretu'

" Vim-Latex
Bundle 'hujunfeng/Vim-Latex'
Bundle 'Rip-Rip/clang_complete'

Bundle 'fomichev/a.vim'
Bundle 'clones/vim-taglist'
Bundle 'blueyed/grep.vim'
Bundle 'winmanager'
Bundle 'mbbill/echofunc'
Bundle 'ShowMarks'
Bundle 'c9s/bufexplorer'
Bundle  'majutsushi/tagbar'

""""""""""""""""""""""
" Tglist配置
" """""""""""""""""
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_Menu=1



""""""""""""""""""""""""""""""
 
"" winManager setting
 
"""""""""""""""""""""""""""""""
 
"设置界面分割
let g:winManagerWidth = 30
let g:winManagerWindowLayout='NERDTree|TagList,BufExplorer'
map <c-w><c-b> :BottomExplorerWindow<cr>
map <c-w><c-f> :FirstExplorerWindow<cr>

"定义打开关闭winmanager按键
nmap <silent> <F8> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>


"""""""""""""""""""""""""""""""""""""""
"" NERDtree 配置
""""""""""""""""""""""""""""""""""""""
"NERD Tree设置名称
let g:NERDTree_title="[NERD Tree]"

"NERD Tree配置
function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction


 "快捷键配置
inoremap <Leader>t <C-x><C-o>
nnoremap <silent> <F3> :Grep<CR>
nnoremap <silent> <F12> :A<CR>




" 在图形界面和终端的配色方案、字体
if has("gui_running")
    set columns=78 lines=18    "设置gui默认界面大小
    if has("unix")
    	colorscheme ingretu
        set guifont=Monospace\ 13
    elseif has("win32")
        colorscheme asu1dark
        set guifont=Courier:h12:cANSI
        set guifontwide=NSimSun:h12 " guifontwide只有在encoding=utf-8时才生效
    endif
else
    if has("unix")
        colorscheme  desert
    elseif has("win32")
        colorscheme ir_black
    endif
endif
