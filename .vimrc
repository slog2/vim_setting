" colorscheme
syntax on
set t_Co=256
color inkpot

" encoding
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,euc-kr

" ctags, cscope
set tags=./tags,../tags,/sniper/web-admin/tags

set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
"if filereadable("/root/src/cscope.out")
"cs add /root/src/cscope.out
"endif
if filereadable("./cscope.out")
	cs add cscope.out
endif
set csverb

" etc
set nu
set nuw=4
set ts=8
set sw=8
set wmnu
"set mouse=a
set splitbelow
set splitright
set noet
set smarttab
set cindent
set ai
set si
set nostartofline
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set hlsearch
set incsearch
set ic
"set showmatch
set pt=<Ins>
set nowrap
set nowrapscan
set ttymouse=xterm2
set noeol
set bs=indent,eol,start

" jaewon
"set expandtab
set autoindent
set tabstop=4
set shiftwidth=4
set backspace=2
set nocompatible

filetype on

" map
nnoremap j gj
nnoremap k gk
vmap <Tab> >gv
vmap <S-Tab> <gv
nmap <F7> <ESC>O<ESC>I// <ESC>60i=<ESC>o<ESC>IDLOG("(%s) ciaoss target[%s]\n", pt_baseconf->file_id, target);<CR><ESC>I// <ESC>60i=<ESC>k$bbcw
nmap <F8> <ESC>O<ESC>I// <ESC>60i=<ESC>o<ESC>Iputlog("ciaoss[".__FILE__."(".__LINE__.")] : ".$message);<CR><ESC>I// <ESC>60i=<ESC>k$bbcw
nmap <F9> <ESC>O<ESC>I// <ESC>60i=<ESC>o<ESC>Iecho "<pre><xmp>ciaoss : ".print_r($array, 1)."</xmp></pre>";<CR><ESC>Iexit;<CR><ESC>I// <ESC>60i=<ESC>kk04W2bcw
imap <F8> <ESC><F8>
imap <F9> <ESC><F9>
nmap <F10> ma:%!svn blame %<CR>
imap <F10> <ESC><F10>
nmap <F11> [i
imap <F11> <ESC><F11>
vmap <C-J> :norm i//<CR>
vmap <C-K> :norm 0xx<CR>
nmap <C-L> :%s/\s*$//<CR>
imap <C-L> <ESC><C-L>
vmap <C-L> :s/\s*$//<CR>
map <C-]> g<C-]>

" jaewon
map <F3> :!/sniper/php/bin/php -d display_errors=1 % <CR>
map <F4> :%s/\s\+$//e <CR>

" highlight DoubleClick
"nmap <2-LeftMouse> *#
""nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>
""nnoremap <silent> <2-leftMouse> :exe 'highlight DoubleClick ctermbg=green guibg=green<bar>match DoubleClick /\V\<'.escape(expand('<cword>'), '\').'\>/'<cr>
""imap <2-LeftMouse> <c-o>*
"vmap " oxi"<esc>pa"<ESC>
"vmap ' oxi'<esc>pa'<ESC>



"vundle
filetype off
set rtp+=~/.vim/bundle/vundle
 
call vundle#rc()
Bundle 'gmarik/vundle'
Plugin 'The-NERD-tree'
Plugin 'vcscommand.vim'
Plugin 'AutoComplPop'
Plugin 'Syntastic'
Plugin 'ctrlp.vim' 

call vundle#end()
filetype plugin indent on

"Syntastic
execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "level": "warnings" }
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_include_dirs = ['/sniper/include', '../util', '../scanner', '/sniper/mysql/include/mysql/', '/sniper/BerkeleyDB.4.8/include/', '/sniper/pcre/include/', '/sniper/ssl/include/openssl/']
"" if mcscreen 2.x version, use this
"let g:syntastic_cpp_include_dirs = ['/sniper/include', '../util', '../scanner', '/sniper/mysql/include', '/sniper/BerkeleyDB.3.3/include/', '/sniper/pcre-6.6/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_auto_refresh_includes = 1

"AutoComplPop
let g:acp_enableAtStartup = 1

