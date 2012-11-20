" vim:set ts=8 sts=2 sw=2 tw=0: ($B$3$N9T$K4X$7$F$O(B:help modeline$B$r;2>H(B)
"
" An example for a Japanese version vimrc file.
" $BF|K\8lHG$N%G%U%)%k%H@_Dj%U%!%$%k(B(vimrc) - Vim7$BMQ;n:n(B
"
" Last Change: 08-May-2012.
" Maintainer:  MURAOKA Taro <koron.kaoriya@gmail.com>
"
" $B2r@b(B:
" $B$3$N%U%!%$%k$K$O(BVim$B$N5/F0;~$KI,$:@_Dj$5$l$k!"JT=8;~$N5sF0$K4X$9$k@_Dj$,=q(B
" $B$+$l$F$$$^$9!#(BGUI$B$K4X$9$k@_Dj$O(Bgvimrc$B$K=q$+$+$l$F$$$^$9!#(B
"
" $B8D?MMQ@_Dj$O(B_vimrc$B$H$$$&%U%!%$%k$r:n@.$7$=$3$G9T$J$$$^$9!#(B_vimrc$B$O$3$N%U%!(B
" $B%$%k$N8e$KFI9~$^$l$k$?$a!"$3$3$K=q$+$l$?FbMF$r>e=q$-$7$F@_Dj$9$k$3$H$,=PMh(B
" $B$^$9!#(B_vimrc$B$O(B$HOME$B$^$?$O(B$VIM$B$KCV$$$F$*$/I,MW$,$"$j$^$9!#(B$HOME$B$O(B$VIM$B$h$j$b(B
" $BM%@h$5$l!"(B$HOME$B$G$_$D$+$C$?>l9g(B$VIM$B$OFI9~$^$l$^$;$s!#(B
"
" $B4IM}<T8~$1$KK\@_Dj%U%!%$%k$rD>@\=q$-49$($:$K:Q$^$;$k$3$H$rL\E*$H$7$F!"%5%$(B
" $B%H%m!<%+%k$J@_Dj$rJL%U%!%$%k$G9T$J$($k$h$&$KG[N8$7$F$"$j$^$9!#(BVim$B5/F0;~$K(B
" $B%5%$%H%m!<%+%k$J@_Dj%U%!%$%k(B($VIM/vimrc_local.vim)$B$,B8:_$9$k$J$i$P!"K\@_Dj(B
" $B%U%!%$%k$N<gMWItJ,$,FI$_9~$^$l$kA0$K<+F0E*$KFI$_9~$_$^$9!#(B
"
" $BFI$_9~$_8e!"JQ?t(Bg:vimrc_local_finish$B$,Hs(B0$B$NCM$K@_Dj$5$l$F$$$?>l9g$K$OK\@_(B
" $BDj%U%!%$%k$K=q$+$l$?FbMF$O0l@Z<B9T$5$l$^$;$s!#%G%U%)%k%HF0:n$rA4$F:9$7BX$((B
" $B$?$$>l9g$KMxMQ$7$F2<$5$$!#(B
"
" $B;29M(B:
"   :help vimrc
"   :echo $HOME
"   :echo $VIM
"   :version

" pathogen.vim$B$K$h$C$F(Bbundle$BG[2<$N(Bplugin$B$r(Bpath$B$K2C$($k(B
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"---------------------------------------------------------------------------
" $B%5%$%H%m!<%+%k$J@_Dj(B($VIM/vimrc_local.vim)$B$,$"$l$PFI$_9~$`!#FI$_9~$s$@8e$K(B
" $BJQ?t(Bg:vimrc_local_finish$B$KHs(B0$B$JCM$,@_Dj$5$l$F$$$?>l9g$K$O!"$=$l0J>e$N@_Dj(B
" $B%U%!%$%k$NFI9~$rCf;_$9$k!#(B
if 1 && filereadable($VIM . '/vimrc_local.vim')
  unlet! g:vimrc_local_finish
  source $VIM/vimrc_local.vim
  if exists('g:vimrc_local_finish') && g:vimrc_local_finish != 0
    finish
  endif
endif

"---------------------------------------------------------------------------
" $B%f!<%6M%@h@_Dj(B($HOME/.vimrc_first.vim)$B$,$"$l$PFI$_9~$`!#FI$_9~$s$@8e$KJQ?t(B
" g:vimrc_first_finish$B$KHs(B0$B$JCM$,@_Dj$5$l$F$$$?>l9g$K$O!"$=$l0J>e$N@_Dj%U%!(B
" $B%$%k$NFI9~$rCf;_$9$k!#(B
if 0 && exists('$HOME') && filereadable($HOME . '/.vimrc_first.vim')
  unlet! g:vimrc_first_finish
  source $HOME/.vimrc_first.vim
  if exists('g:vimrc_first_finish') && g:vimrc_first_finish != 0
    finish
  endif
endif

" plugins$B2<$N%G%#%l%/%H%j$r(Bruntimepath$B$XDI2C$9$k!#(B
for path in split(glob($VIM.'/plugins/*'), '\n')
  if isdirectory(path) | let &runtimepath = &runtimepath.','.path | end
endfor

"---------------------------------------------------------------------------
" $BF|K\8lBP1~$N$?$a$N@_Dj(B:
"
" $B%U%!%$%k$rFI9~$`;~$K%H%i%$$9$kJ8;z%(%s%3!<%I$N=g=x$r3NDj$9$k!#4A;z%3!<%I<+(B
" $BF0H=JL5!G=$rMxMQ$9$k>l9g$K$OJLES(Biconv.dll$B$,I,MW!#(Biconv.dll$B$K$D$$$F$O(B
" README_w32j.txt$B$r;2>H!#%f!<%F%#%j%F%#%9%/%j%W%H$rFI$_9~$`$3$H$G@_Dj$5$l$k!#(B
source $VIM/plugins/kaoriya/encode_japan.vim
" $B%a%C%;!<%8$rF|K\8l$K$9$k(B (Windows$B$G$O<+F0E*$KH=CG!&@_Dj$5$l$F$$$k(B)
if !(has('win32') || has('mac')) && has('multi_lang')
  if !exists('$LANG') || $LANG.'X' ==# 'X'
    if !exists('$LC_CTYPE') || $LC_CTYPE.'X' ==# 'X'
      language ctype ja_JP.eucJP
    endif
    if !exists('$LC_MESSAGES') || $LC_MESSAGES.'X' ==# 'X'
      language messages ja_JP.eucJP
    endif
  endif
endif
" MacOS X$B%a%K%e!<$NF|K\8l2=(B ($B%a%K%e!<I=<(A0$K9T$J$&I,MW$,$"$k(B)
if has('mac')
  if exists('$LANG') && $LANG ==# 'ja_JP.UTF-8'
    set langmenu=ja_ja.utf-8.macvim
    set encoding=utf-8
    set ambiwidth=double
  endif
endif
" $BF|K\8lF~NOMQ$N(Bkeymap$B$N@_DjNc(B ($B%3%a%s%H%"%&%H(B)
if has('keymap')
  " $B%m!<%^;z2>L>$N(Bkeymap
  "silent! set keymap=japanese
  "set iminsert=0 imsearch=0
endif
" $BHs(BGUI$BF|K\8l%3%s%=!<%k$r;H$C$F$$$k>l9g$N@_Dj(B
if !has('gui_running') && &encoding != 'cp932' && &term == 'win32'
  set termencoding=cp932
endif

"---------------------------------------------------------------------------
" $B%a%K%e!<%U%!%$%k$,B8:_$7$J$$>l9g$OM=$a(B'guioptions'$B$rD4@0$7$F$*$/(B
if 1 && !filereadable($VIMRUNTIME . '/menu.vim') && has('gui_running')
  set guioptions+=M
endif

"---------------------------------------------------------------------------
" Bram$B;a$NDs6!$9$k@_DjNc$r%$%s%/%k!<%I(B ($BJL%U%!%$%k(B:vimrc_example.vim)$B!#$3$l(B
" $B0JA0$K(Bg:no_vimrc_example$B$KHs(B0$B$JCM$r@_Dj$7$F$*$1$P%$%s%/%k!<%I$O$7$J$$!#(B
if 1 && (!exists('g:no_vimrc_example') || g:no_vimrc_example == 0)
  if &guioptions !~# "M"
    " vimrc_example.vim$B$rFI$_9~$`;~$O(Bguioptions$B$K(BM$B%U%i%0$r$D$1$F!"(Bsyntax on
    " $B$d(Bfiletype plugin on$B$,0z$-5/$3$9(Bmenu.vim$B$NFI$_9~$_$rHr$1$k!#$3$&$7$J$$(B
    " $B$H(Benc$B$KBP1~$9$k%a%K%e!<%U%!%$%k$,FI$_9~$^$l$F$7$^$$!"$3$l$N8e$GFI$_9~(B
    " $B$^$l$k(B.vimrc$B$G(Benc$B$,@_Dj$5$l$?>l9g$K$=$N@_Dj$,H?1G$5$l$:%a%K%e!<$,J8;z(B
    " $B2=$1$F$7$^$&!#(B
    set guioptions+=M
    source $VIMRUNTIME/vimrc_example.vim
    set guioptions-=M
  else
    source $VIMRUNTIME/vimrc_example.vim
  endif
endif

"---------------------------------------------------------------------------
" $B8!:w$N5sF0$K4X$9$k@_Dj(B:
"
" $B8!:w;~$KBgJ8;z>.J8;z$rL5;k(B (noignorecase:$BL5;k$7$J$$(B)
set ignorecase
" $BBgJ8;z>.J8;z$NN>J}$,4^$^$l$F$$$k>l9g$OBgJ8;z>.J8;z$r6hJL(B
set smartcase

"---------------------------------------------------------------------------
" $BJT=8$K4X$9$k@_Dj(B:
"
" $B%?%V$N2hLL>e$G$NI}(B
set tabstop=4
" $B%?%V$r%9%Z!<%9$KE83+$7$J$$(B (expandtab:$BE83+$9$k(B)
set noexpandtab
" $B<+F0E*$K%$%s%G%s%H$9$k(B (noautoindent:$B%$%s%G%s%H$7$J$$(B)
set autoindent
" $B%P%C%/%9%Z!<%9$G%$%s%G%s%H$d2~9T$r:o=|$G$-$k$h$&$K$9$k(B
set backspace=2
" $B8!:w;~$K%U%!%$%k$N:G8e$^$G9T$C$?$i:G=i$KLa$k(B (nowrapscan:$BLa$i$J$$(B)
set wrapscan
" $B3g8LF~NO;~$KBP1~$9$k3g8L$rI=<((B (noshowmatch:$BI=<($7$J$$(B)
set showmatch
" $B%3%^%s%I%i%$%sJd40$9$k$H$-$K6/2=$5$l$?$b$N$r;H$&(B($B;2>H(B :help wildmenu)
set wildmenu
" $B%F%-%9%HA^F~Cf$N<+F0@^$jJV$7$rF|K\8l$KBP1~$5$;$k(B
set formatoptions+=mM

"---------------------------------------------------------------------------
" GUI$B8GM-$G$O$J$$2hLLI=<($N@_Dj(B:
"
" $B9THV9f$rHsI=<((B (number:$BI=<((B)
set number
" $B%k!<%i!<$rI=<((B (noruler:$BHsI=<((B)
set ruler
" $B%?%V$d2~9T$rI=<((B (list:$BI=<((B)
set nolist
" $B$I$NJ8;z$G%?%V$d2~9T$rI=<($9$k$+$r@_Dj(B
"set listchars=tab:>-,extends:<,trail:-,eol:<
" $BD9$$9T$r@^$jJV$7$FI=<((B (nowrap:$B@^$jJV$5$J$$(B)
set wrap
" $B>o$K%9%F!<%?%99T$rI=<((B ($B>\:Y$O(B:he laststatus)
set laststatus=2
" $B%3%^%s%I%i%$%s$N9b$5(B (Windows$BMQ(Bgvim$B;HMQ;~$O(Bgvimrc$B$rJT=8$9$k$3$H(B)
set cmdheight=2
" $B%3%^%s%I$r%9%F!<%?%99T$KI=<((B
set showcmd
" $B%?%$%H%k$rI=<((B
set title
" $B2hLL$r9uCO$KGr$K$9$k(B ($B<!9T$N@hF,$N(B " $B$r:o=|$9$l$PM-8z$K$J$k(B)
"colorscheme evening " (Windows$BMQ(Bgvim$B;HMQ;~$O(Bgvimrc$B$rJT=8$9$k$3$H(B)

"---------------------------------------------------------------------------
" $B%U%!%$%kA`:n$K4X$9$k@_Dj(B:
"
" $B%P%C%/%"%C%W%U%!%$%k$r:n@.$7$J$$(B ($B<!9T$N@hF,$N(B " $B$r:o=|$9$l$PM-8z$K$J$k(B)
"set nobackup


"---------------------------------------------------------------------------
" $B%U%!%$%kL>$KBgJ8;z>.J8;z$N6hJL$,$J$$%7%9%F%`MQ$N@_Dj(B:
"   ($BNc(B: DOS/Windows/MacOS)
"
if filereadable($VIM . '/vimrc') && filereadable($VIM . '/ViMrC')
  " tags$B%U%!%$%k$N=EJ#KI;_(B
  set tags=./tags,tags
endif

"---------------------------------------------------------------------------
" $B%3%s%=!<%k$G$N%+%i!<I=<($N$?$a$N@_Dj(B($B;CDjE*$K(BUNIX$B@lMQ(B)
if has('unix') && !has('gui_running') && !has('gui_macvim')
  let uname = system('uname')
  if uname =~? "linux"
    set term=builtin_linux
  elseif uname =~? "freebsd"
    set term=builtin_cons25
  elseif uname =~? "Darwin"
    set term=beos-ansi
  else
    set term=builtin_xterm
  endif
  unlet uname
endif

"---------------------------------------------------------------------------
" $B%3%s%=!<%kHG$G4D6-JQ?t(B$DISPLAY$B$,@_Dj$5$l$F$$$k$H5/F0$,CY$/$J$k7o$XBP1~(B
if !has('gui_running') && has('xterm_clipboard')
  set clipboard=exclude:cons\\\|linux\\\|cygwin\\\|rxvt\\\|screen
endif

"---------------------------------------------------------------------------
" $B%W%i%C%H%[!<%`0MB8$NFCJL$J@_Dj(B

" Win$B$G$O(BPATH$B$K(B$VIM$B$,4^$^$l$F$$$J$$$H$-$K(Bexe$B$r8+$D$1=P$;$J$$$N$G=$@5(B
if has('win32') && $PATH !~? '\(^\|;\)' . escape($VIM, '\\') . '\(;\|$\)'
  let $PATH = $VIM . ';' . $PATH
endif

if has('mac')
  " Mac$B$G$O%G%U%)%k%H$N(B'iskeyword'$B$,(Bcp932$B$KBP1~$7$-$l$F$$$J$$$N$G=$@5(B
  set iskeyword=@,48-57,_,128-167,224-235
endif

"---------------------------------------------------------------------------
" KaoriYa$B$G%P%s%I%k$7$F$$$k%W%i%0%$%s$N$?$a$N@_Dj(B

" autofmt: $BF|K\8lJ8>O$N%U%)!<%^%C%H(B($B@^$jJV$7(B)$B%W%i%0%$%s(B.
set formatexpr=autofmt#japanese#formatexpr()

" Copyright (C) 2011 KaoriYa/MURAOKA Taro


"
" MacVim-KaoriYa$B8GM-$N@_Dj(B
"
let $PATH = simplify($VIM . '/../../MacOS') . ':' . $PATH
set migemodict=$VIMRUNTIME/dict/migemo-dict
set migemo

" -------------------------------------------------------------------------
" $BNkLZ%*%j%8%J%k@_Dj(B
"
let g:facebook_access_token_file = expand('~/.fb_access_token')
let g:facebook_timezone = '+0900'

" -------------------------------------------------------------------------
" NeoBundle 2012/05/07

set nocompatible

filetype off

if has('vim_starting')
set runtimepath+=~/.vim/neobundle/neobundle.vim

call neobundle#rc(expand('.vim/neobundle'))
endif

NeoBundle 'https://github.com/tyru/open-browser.vim.git'

NeoBundle 'https://github.com/thinca/vim-tabrecent.git'
NeoBundle 'https://github.com/mrtazz/simplenote.vim.git'
  "$B%*%s%i%$%s%N!<%H(Bsimplenote$B$r;H$&(B
NeoBundle 'https://github.com/tacroe/unite-mark.git'
  "$B%^!<%/0lMw$rI=<((B
NeoBundle 'https://github.com/tpope/vim-speeddating.git'
NeoBundle 'https://github.com/ujihisa/mdv.git'
  "VimHacks$B$G;H$o$l$F$$$k3HD%(BMarkdown
NeoBundle 'https://github.com/ujihisa/neco-look.git'
NeoBundle 'https://github.com/mattn/wwwrenderer-vim.git'
NeoBundle 'https://github.com/mattn/webapi-vim.git'
NeoBundle 'https://github.com/t9md/vim-textmanip.git'
" PowerLine
NeoBundle 'https://github.com/Lokaltog/vim-powerline.git'
" vim-indent-guides
NeoBundle 'https://github.com/nathanaelkane/vim-indent-guides.git'

"$B%F%-%9%H$rD>46E*$K0\F0J#@=(B

filetype plugin indent on  "$B%U%!%$%kH=Dj$r(Bon$B$K$9$k(B

" pathogen$B$G(Bftdetect$B$J$I$r(Bload$B$5$;$k$?$a$K0lEY%U%!%$%k%?%$%WH=Dj$r(Boff
filetype off
set helpfile=$VIMRUNTIME/doc/help.txt
" $B%U%!%$%k%?%$%WH=Dj$r(Bon
filetype plugin on

filetype on
autocmd FileType c,cpp,perl set cindent
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
set autoindent
set shiftwidth=4
set backup
set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932

if has('gui_macvim')
    set showtabline=2  " $B%?%V$r>o$KI=<((B
    set imdisable  " IM$B$rL58z2=(B
    set transparency=10  " $BF)L@EY$r;XDj(B
    set antialias
    " set guifont=Monaco:h14
  set guifont=Ricty:h14
    colorscheme koehler
    set lsp=5
    set lines=50
    set columns=240
    set guioptions-=T
endif

if has("gui_running")
  set fuoptions=maxvert,maxhorz
  " au GUIEnter * set fullscreen
endif

"$B%P%C%/%"%C%W%U%!%$%k$r:n@.$7$J$$(B
set nobackup

" -----------------------------------------------------------------------
" trinity

nmap <F8> :TrinityToggleAll<CR>
nmap <F9> :TrinityToggleSourceExplorer<CR>
nmap <F10> :TrinityToggleTagList<CR>
nmap <F11> :TrinityToggleNERDTree<CR>

" NERDTree

nmap <F7> :NERDTreeToggle<CR>
let file_name = expand("%")
if has('vim_starting') && file_name == ""
    autocmd VimEnter * NERDTree /Users/suzuki/
endif

" -----------------------------------------------------------------------
" $B%+!<%=%k9T$r%O%$%i%$%H(B
  set cursorline
  " $B%+%l%s%H%&%#%s%I%&$K$N$_7S@~$r0z$/(B
  augroup cch
    autocmd! cch
    autocmd WinLeave * set nocursorline
    autocmd WinEnter,BufRead * set cursorline
  augroup END

:hi clear CursorLine
:hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

"Esc$B$N(B2$B2s2!$7$G%O%$%i%$%H>C5n(B
nnoremap <ESC><ESC> :nohlsearch<CR><ESC>

" Ctrl-i$B$G%X%k%W(B
nnoremap <C-i>  :<C-u>help<Space>
" $B%+!<%=%k2<$N%-!<%o!<%I$r%X%k%W$G$R$/(B
nnoremap <C-i><C-i> :<C-u>help<Space><C-r><C-w><Enter>

" $BJ]B8;~$K9TKv$N6uGr$r=|5n$9$k(B
autocmd BufWritePre * :%s/\s\+$//ge
" $BJ]B8;~$K(Btab$B$r%9%Z!<%9$KJQ49$9$k(B
autocmd BufWritePre * :%s/\t/  /ge

" CTRL-hjkl$B$G%&%#%s%I%&0\F0(B
nnoremap <C-j> ;<C-w>j
nnoremap <C-k> ;<C-k>j
nnoremap <C-l> ;<C-l>j
nnoremap <C-h> ;<C-h>j

"-------------------------------------------------------------------------------
" $B4pK\@_Dj(B Basics
"-------------------------------------------------------------------------------
let mapleader = ","              " $B%-!<%^%C%W%j!<%@!<(B
set scrolloff=5                  " $B%9%/%m!<%k;~$NM>Gr3NJ](B
set textwidth=0                  " $B0l9T$KD9$$J8>O$r=q$$$F$$$F$b<+F0@^$jJV$7$r$7$J$$(B
set nobackup                     " $B%P%C%/%"%C%W<h$i$J$$(B
set autoread                     " $BB>$G=q$-49$($i$l$?$i<+F0$GFI$_D>$9(B
set noswapfile                   " $B%9%o%C%W%U%!%$%k:n$i$J$$(B
set hidden                       " $BJT=8Cf$G$bB>$N%U%!%$%k$r3+$1$k$h$&$K$9$k(B
set backspace=indent,eol,start   " $B%P%C%/%9%Z!<%9$G$J$s$G$b>C$;$k$h$&$K(B
set formatoptions=lmoq           " $B%F%-%9%H@07A%*%W%7%g%s!$%^%k%A%P%$%H7O$rDI2C(B
set vb t_vb=                     " $B%S!<%W$r$J$i$5$J$$(B
set browsedir=buffer             " Explore$B$N=i4|%G%#%l%/%H%j(B
set whichwrap=b,s,h,l,<,>,[,]    " $B%+!<%=%k$r9TF,!"9TKv$G;_$^$i$J$$$h$&$K$9$k(B
set showcmd                      " $B%3%^%s%I$r%9%F!<%?%99T$KI=<((B
set showmode                     " $B8=:_$N%b!<%I$rI=<((B
set viminfo='50,<1000,s100,\"50  " viminfo$B%U%!%$%k$N@_Dj(B
set modelines=0                  " $B%b!<%I%i%$%s$OL58z(B

" OS$B$N%/%j%C%W%\!<%I$r;HMQ$9$k(B
set clipboard+=unnamed
" $B%?!<%_%J%k$G%^%&%9$r;HMQ$G$-$k$h$&$K$9$k(B
set mouse=a
set guioptions+=a
set ttymouse=xterm2

"$B%d%s%/$7$?J8;z$O!"%7%9%F%`$N%/%j%C%W%\!<%I$KF~$l$k(B"
set clipboard=unnamed
" $BA^F~%b!<%I$G(BCtrl+k$B$r2!$9$H%/%j%C%W%\!<%I$NFbMF$rE=$jIU$1$i$l$k$h$&$K$9$k(B "
imap <C-p>  <ESC>"*pa

" Ev/Rv$B$G(Bvimrc$B$NJT=8$HH?1G(B
command! Ev edit $MYVIMRC
command! Rv source $MYVIMRC

set helpfile=$VIMRUNTIME/doc/help.txt

" $B%U%!%$%k%?%$%WH=Dj$r(Bon
filetype plugin on

"-------------------------------------------------------------------------------
" $B%9%F!<%?%9%i%$%s(B StatusLine
"-------------------------------------------------------------------------------
set laststatus=2 " $B>o$K%9%F!<%?%9%i%$%s$rI=<((B

"$B%+!<%=%k$,2?9TL\$N2?NsL\$KCV$+$l$F$$$k$+$rI=<($9$k(B
set ruler

"$B%9%F!<%?%9%i%$%s$KJ8;z%3!<%I$H2~9TJ8;z$rI=<($9$k(B
set statusline=%F%m%r%h%w\%=[TYPE=%Y]\[FORMAT=%{&ff}]\[ENC=%{&fileencoding}]\[LOW=%l/%L]

" if winwidth(0) >= 120
"  set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %F%=[%{GetB()}]\ %{fugitive#statusline()}\ %l,%c%V%8P
" else
"  set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %f%=[%{GetB()}]\ %{fugitive#statusline()}\ %l,%c%V%8P
" endif

"$BF~NO%b!<%I;~!"%9%F!<%?%9%i%$%s$N%+%i!<$rJQ99(B
augroup InsertHook
autocmd!
" autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340 ctermfg=cyan
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#000033 ctermfg=cyan
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90 ctermfg=white
augroup END

"$B<+F0E*$K(B QuickFix $B%j%9%H$rI=<($9$k(B
autocmd QuickfixCmdPost make,grep,grepadd,vimgrep,vimgrepadd cwin
autocmd QuickfixCmdPost lmake,lgrep,lgrepadd,lvimgrep,lvimgrepadd lwin

function! GetB()
  let c = matchstr(getline('.'), '.', col('.') - 1)
  let c = iconv(c, &enc, &fenc)
  return String2Hex(c)
endfunction
" help eval-examples
" The function Nr2Hex() returns the Hex string of a number.
func! Nr2Hex(nr)
  let n = a:nr
  let r = ""
  while n
    let r = '0123456789ABCDEF'[n % 16] . r
    let n = n / 16
  endwhile
  return r
endfunc
" The function String2Hex() converts each character in a string to a two
" character Hex string.
func! String2Hex(str)
  let out = ''
  let ix = 0
  while ix < strlen(a:str)
    let out = out . Nr2Hex(char2nr(a:str[ix]))
    let ix = ix + 1
  endwhile
  return out
endfunc

"-------------------------------------------------------------------------------
" $BI=<((B Apperance
"-------------------------------------------------------------------------------
set showmatch         " $B3g8L$NBP1~$r%O%$%i%$%H(B
set number            " $B9THV9fI=<((B
set list              " $BIT2D;kJ8;zI=<((B
set listchars=tab:>.,trail:_,extends:>,precedes:< " $BIT2D;kJ8;z$NI=<(7A<0(B
set display=uhex      " $B0u;zIT2DG=J8;z$r(B16$B?J?t$GI=<((B

" $BA43Q%9%Z!<%9$NI=<((B
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /$B!!(B/

" $B%+!<%=%k9T$r%O%$%i%$%H(B
set cursorline
" $B%+%l%s%H%&%#%s%I%&$K$N$_7S@~$r0z$/(B
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

:hi clear CursorLine
:hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

" $B%3%^%s%I<B9TCf$O:FIA2h$7$J$$(B
:set lazyredraw
" $B9bB.%?!<%_%J%k@\B3$r9T$&(B
:set ttyfast

"-------------------------------------------------------------------------------
" $B%$%s%G%s%H(B Indent
"-------------------------------------------------------------------------------
set autoindent   " $B<+F0$G%$%s%G%s%H(B
"set paste        " $B%Z!<%9%H;~$K(Bautoindent$B$rL58z$K(B(on$B$K$9$k$H(Bautocomplpop.vim$B$,F0$+$J$$(B)
set smartindent  " $B?7$7$$9T$r3+;O$7$?$H$-$K!"?7$7$$9T$N%$%s%G%s%H$r8=:_9T$HF1$8NL$K$9$k!#(B
set cindent      " C$B%W%m%0%i%`%U%!%$%k$N<+F0%$%s%G%s%H$r;O$a$k(B

" softtabstop$B$O(BTab$B%-!<2!$72<$2;~$NA^F~$5$l$k6uGr$NNL!$(B0$B$N>l9g$O(Btabstop$B$HF1$8!$(BBS$B$K$b1F6A$9$k(B
set tabstop=4 shiftwidth=4 softtabstop=0

if has("autocmd")
  "$B%U%!%$%k%?%$%W$N8!:w$rM-8z$K$9$k(B
  filetype plugin on
  "$B$=$N%U%!%$%k%?%$%W$K$"$o$;$?%$%s%G%s%H$rMxMQ$9$k(B
  filetype indent on
  " $B$3$l$i$N(Bft$B$G$O%$%s%G%s%H$rL58z$K(B
  "autocmd FileType php filetype indent off

  autocmd FileType html :set indentexpr=
  autocmd FileType xhtml :set indentexpr=
endif

"-------------------------------------------------------------------------------
" $BJd40!&MzNr(B Complete
"-------------------------------------------------------------------------------
set wildmenu               " $B%3%^%s%IJd40$r6/2=(B
set wildchar=<tab>         " $B%3%^%s%IJd40$r3+;O$9$k%-!<(B
set wildmode=list:full     " $B%j%9%HI=<(!$:GD9%^%C%A(B
set history=1000           " $B%3%^%s%I!&8!:w%Q%?!<%s$NMzNr?t(B
set complete+=k            " $BJd40$K<-=q%U%!%$%kDI2C(B

" Ex-mode$B$G$N(B<C-p><C-n>$B$r(Bzsh$B$N%R%9%H%jJd40$C$]$/$9$k(B
cnoremap <C-p> <Up>
cnoremap <Up>  <C-p>
cnoremap <C-n> <Down>
cnoremap <Down>  <C-n>

" TODO $B$=$m$=$m(Bvimrc$BJ,3d$9$k(B
" TODO Vim Hacks #81
" TODO submode.vim $B$G(BC-w +$B$H$+$N%&%#%s%I%&%5%$%:JQ99$r4JC1$K$9$k(B
" TODO smartchar.vim $B$N(Bloop$B$O;H$($=$&(B
" TODO Arpeggio.vim$B$G%-!<$NF1;~2!$7$G%^%C%T%s%0$G$-$k(B!
" TODO monday.vim$B$r(Btoggle.vim$B$KF~$lBX$($k(B
" TODO

"-------------------------------------------------------------------------------
" $BJT=84XO"(B Edit
"-------------------------------------------------------------------------------

" insert$B%b!<%I$rH4$1$k$H(BIME$B%*%U(B
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

" ye$B$G$=$N%+!<%=%k0LCV$K$"$kC18l$r%l%8%9%?$KDI2C(B
nmap ye ;let @"=expand("<cword>")<CR>
" Visual$B%b!<%I$G$N(Bp$B$GA*BrHO0O$r%l%8%9%?$NFbMF$KCV$-49$($k(B
vnoremap p <Esc>;let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" Tab$B%-!<$r6uGr$KJQ49(B
set expandtab

" $B%3%s%^$N8e$K<+F0E*$K%9%Z!<%9$rA^F~(B
inoremap , ,<Space>
" XML$B$NJD%?%0$r<+F0A^F~(B
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
augroup END

"  Insert mode$BCf$GC18lC10L(B/$B9TC10L$N:o=|$r%"%s%I%%2DG=$K$9$k(B
inoremap <C-u>  <C-g>u<C-u>
inoremap <C-w>  <C-g>u<C-w>

" :Pt$B$G%$%s%G%s%H%b!<%I@ZBX(B
command! Pt :set paste!

" y9$B$G9TKv$^$G%d%s%/(B
nmap y9 y$
" y0$B$G9TF,$^$G%d%s%/(B
nmap y0 y^

"
" $B3g8L$r<+F0Jd40(B
inoremap < <><LEFT>
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

" $BJ]B8;~$K9TKv$N6uGr$r=|5n$9$k(B
autocmd BufWritePre * :%s/\s\+$//ge
" $BJ]B8;~$K(Btab$B$r%9%Z!<%9$KJQ49$9$k(B
autocmd BufWritePre * :%s/\t/  /ge

" $BF|;~$N<+F0F~NO(B
inoremap <expr> ,df strftime('%Y/%m/%d %H:%M:%S')
inoremap <expr> ,dd strftime('%Y/%m/%d')
inoremap <expr> ,dt strftime('%H:%M:%S')

""" unite.vim
"" $BF~NO%b!<%I$G3+;O$9$k(B
let g:unite_enable_start_insert=1
" $B%P%C%U%!0lMw(B
noremap <C-P> :Unite buffer<CR>
" $B%U%!%$%k0lMw(B
noremap <C-N> :Unite -buffer-name=file file<CR>
" $B:G6a;H$C$?%U%!%$%k$N0lMw(B
noremap <C-Z> :Unite file_mru<CR>
" $B%&%#%s%I%&$rJ,3d$7$F3+$/(B
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" $B%&%#%s%I%&$r=D$KJ,3d$7$F3+$/(B
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESC$B%-!<$r(B2$B2s2!$9$H=*N;$9$k(B
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
" $B=i4|@_Dj4X?t$r5/F0$9$k(B
au FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " Overwrite settings.
endfunction
" $BMM!9$J%7%g!<%H%+%C%H(B
call unite#set_substitute_pattern('file', '\$\w\+', '\=eval(submatch(0))', 200)
call unite#set_substitute_pattern('file', '^@@', '\=fnamemodify(expand("#"), ":p:h")."/"', 2)
call unite#set_substitute_pattern('file', '^@', '\=getcwd()."/*"', 1)
call unite#set_substitute_pattern('file', '^;r', '\=$VIMRUNTIME."/"')
call unite#set_substitute_pattern('file', '^\~', escape($HOME, '\'), -2)
call unite#set_substitute_pattern('file', '\\\@<! ', '\\ ', -20)
call unite#set_substitute_pattern('file', '\\ \@!', '/', -30)
if has('win32') || has('win64')
  call unite#set_substitute_pattern('file', '^;p', 'C:/Program Files/')
  call unite#set_substitute_pattern('file', '^;v', '~/vimfiles/')
else
  call unite#set_substitute_pattern('file', '^;v', '~/.vim/')
endif

" Project.vim
:let g:proj_flags = "imstc"
:nmap <silent> <Leader>P <Plug>ToggleProject
:nmap <silent> <Leader>p :Project<CR>
if getcwd() != $HOME
  if filereadble(getcwd().'/.vimprojects')
    Project .vimprojects
  endif
endif

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 1

" neocomplcache
let g:neocomplcache_enable_at_startup = 1 " $B5/F0;~$KM-8z2=(B
" <C-k> $B$K%^%C%T%s%0(B
imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)

"C-n$BJd40$NBP>](B($B%+%l%s%H%P%C%U%!!"%?%0!"<-=q(B) :help 'complete'
"neocomplcache$B$K$O1F6A$7$J$$!)(B
"neocomplcache$B$K$O1F6A$7$J$$$=$&$J$N$G%3%a%s%H%"%&%H(B
"set complete=.,w,b,u,k,t
"$BJd40%&%#%s%I%&$N@_Dj(B :help completeopt
set completeopt=menuone

"$B5/F0;~$KM-8z(B
let g:neocomplcache_enable_at_startup = 1
"$B%]%C%W%"%C%W%a%K%e!<$GI=<($5$l$k8uJd$N?t!#=i4|CM$O(B100
let g:neocomplcache_max_list = 20
"$B<+F0Jd40$r9T$&F~NO?t$r@_Dj!#=i4|CM$O(B2
let g:neocomplcache_auto_completion_start_length = 2
"$B<jF0Jd40;~$KJd40$r9T$&F~NO?t$r@)8f!#CM$r>.$5$/$9$k$HJ8;z$N:o=|;~$K=E$/$J$k(B
let g:neocomplcache_manual_completion_start_length = 3
"$B%P%C%U%!$d<-=q%U%!%$%kCf$G!"Jd40$NBP>]$H$J$k%-!<%o!<%I$N:G>.D9$5!#=i4|CM$O(B4$B!#(B
let g:neocomplcache_min_keyword_length = 4
"$B%7%s%?%C%/%9%U%!%$%kCf$G!"Jd40$NBP>]$H$J$k%-!<%o!<%I$N:G>.D9$5!#=i4|CM$O(B4$B!#(B
let g:neocomplcache_min_syntax_length = 4
"1:$BJd408uJd8!:w;~$KBgJ8;z!&>.J8;z$rL5;k$9$k(B
let g:neocomplcache_enable_ignore_case = 1
"$BF~NO$KBgJ8;z$,F~NO$5$l$F$$$k>l9g!"BgJ8;z>.J8;z$N6hJL$r$9$k(B
let g:neocomplcache_enable_smart_case = 1
"$B%]%C%W%"%C%W%a%K%e!<$,=P$F$$$k$H$-$K(B-$B$rF~NO$9$k$H1Q?t;z$G8uJdA*Br$9$k!#(B
"$B:o=|$5$l$F$$$?$h$&$J$N$G%3%a%s%H%"%&%H(B
"let g:neocomplcache_enable_quick_match = 0
";$B$G1Q?t;z8uJdA*Br$G$-$k$h$&$K$7$?$+$C$?$1$IF0$+$J$$(B
"$BF0$+$J$$$N$O;EMM$N$h$&$G$9!#%3%a%s%H%"%&%H(B
"let g:neocomplcache_quick_match_patterns = {
"  \ 'default' : ';'
"  \ }
"$BBgJ8;z>.J8;z$r6h@Z$j$H$7$?$"$$$^$$8!:w$r9T$&$+$I$&$+!#(B
"DT$B$HF~NO$9$k$H(BD*T*$B$H2r<a$5$l!"(BDateTime$BEy$K%^%C%A$9$k!#(B
let g:neocomplcache_enable_camel_case_completion = 0
"$B%"%s%@!<%P!<$r6h@Z$j$H$7$?$"$$$^$$8!:w$r9T$&$+$I$&$+!#(B
"m_s$B$HF~NO$9$k$H(Bm*_s$B$H2r<a$5$l!"(Bmb_substr$BEy$K%^%C%A$9$k!#(B
let g:neocomplcache_enable_underbar_completion = 0

"neocomplcache$B$r<+F0E*$K%m%C%/$9$k%P%C%U%!L>$N%Q%?!<%s$r;XDj!#(B
"ku.vim$B$d(Bfuzzyfinder$B$J$I!"(Bneocomplcache$B$HAj@-$,0-$$%W%i%0%$%s$r;HMQ$9$k>l9g$K@_Dj!#(B
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

"$B%-%c%C%7%e%G%#%l%/%H%j$N>l=j(B
"RamDisk$B$r%-%c%C%7%e%G%#%l%/%H%j$K@_Dj(B
" if has('win32') + has('win64')
"  let g:neocomplcache_temporary_dir = 'E:/.neocon'
" elseif has('mac')
"  let g:neocomplcache_temporary_dir = '/Volumes/RamDisk/.neocon'
" elseif has('unix')
"  let g:neocomplcache_temporary_dir = '/tmp/.neocon'
" endif

"$B%7%s%?%C%/%9Jd40$rL58z$K(B
let g:neocomplcache_plugin_disable = {
  \ 'syntax_complete' : 1,
  \ }

"$BJd40$9$k$?$a$N%-!<%o!<%I%Q%?!<%s$r;XDj(B
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
"$BF|K\8l$rJd408uJd$H$7$F<hF@$7$J$$$h$&$K$9$k(B
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"twig$B$O(Bhtml$B$HF1$8$K(B
let g:neocomplcache_keyword_patterns['twig'] = '</\?\%([[:alnum:]_:-]\+\s*\)\?\%(/\?>\)\?\|&\h\%(\w*;\)\?\|\h[[:alnum:]_-]*="\%([^"]*"\?\)\?\|\h[[:alnum:]_:-]*'

"$B4X?t$rJd40$9$k$?$a$N6h@Z$jJ8;z%Q%?!<%s(B
if !exists('g:neocomplcache_delimiter_patterns')
  let g:neocomplcache_delimiter_patterns = {}
endif
let g:neocomplcache_delimiter_patterns['php'] = ['->', '::', '\']

"$B%+!<%=%k$h$j8e$N%-!<%o!<%I%Q%?!<%s$rG'<1!#(B
"h|ge$B$H$J$C$F$$$k>uBV(B(|$B$O%+!<%=%k(B)$B$G!"(Bhoge$B$rJd40$7$?$H$-$K8e$m$N%-!<%o!<%I$rG'<1$7$F(Bho|ge$B$HJd40$9$k5!G=!#(B
"$B=$@5$9$k$H$-$K$+$J$jJXMx!#(B
g:neocomplcache_next_keyword_patterns$B$OJ,$+$i$J$$$H$-$O$$$8$i$J$$$[$&$,NI$$$G$9!#(B
if !exists('g:neocomplcache_next_keyword_patterns')
  let g:neocomplcache_next_keyword_patterns = {}
endif
"$B$h$/J,$+$i$J$$>l9g$OL$@_Dj$N$[$&$,$h$$$H$N$3$H$J$N$G!"$R$H$^$:%3%a%s%H%"%&%H(B
"let g:neocomplcache_next_keyword_patterns['php'] = '\h\w*>'
"twig$B$O(Bhtml$B$HF1$8$K(B
let g:neocomplcache_next_keyword_patterns['twig'] = '[[:alnum:]_:-]*>\|[^"]*"'

"$B%U%!%$%k%?%$%W$N4XO"IU$1(B
if !exists('g:neocomplcache_same_filetype_lists')
  let g:neocomplcache_same_filetype_lists = {}
endif
"let g:neocomplcache_same_filetype_lists['ctp'] = 'php'
"let g:neocomplcache_same_filetype_lists['twig'] = 'html'

"$B%G%#%/%7%g%J%jJd40(B
"$B%U%!%$%k%?%$%W$4$H$N<-=q%U%!%$%k$N>l=j(B
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'php' : $HOME . '/.vim/dict/php.dict',
  \ 'ctp' : $HOME . '/.vim/dict/php.dict',
  \ 'twig' : $HOME . '/.vim/dict/twig.dict',
  \ 'vimshell' : $HOME . '/.vimshell/command-history',
  \ }

"$B%?%0Jd40(B
"$B%?%0%U%!%$%k$N>l=j(B
augroup SetTagsFile
  autocmd!
  autocmd FileType php set tags=$HOME/.vim/tags/php.tags
augroup END
"$B%?%0Jd40$N8F$S=P$7%Q%?!<%s(B
if !exists('g:neocomplcache_member_prefix_patterns')
  let g:neocomplcache_member_prefix_patterns = {}
endif
let g:neocomplcache_member_prefix_patterns['php'] = '->\|::'

"$B%9%K%Z%C%HJd40(B
"$BI8=`$GMQ0U$5$l$F$$$k%9%K%Z%C%H$rL58z$K$9$k!#=i4|2=A0$K@_Dj$9$k(B
let g:neocomplcache_snippets_disable_runtime_snippets = 1
"$B%9%K%Z%C%H%U%!%$%k$NCV$->l=j(B
let g:neocomplcache_snippets_dir = $HOME.'/.vim/snippets'

"zencoding$BO"7H(B
let g:use_zen_complete_tag = 1

"$B%*%`%KJd40(B
augroup SetOmniCompletionSetting
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType ctp setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType twig setlocal omnifunc=htmlcomplete#CompleteTags
"  autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
augroup END

"$B%*%`%KJd40$N%Q%?!<%s$r@_Dj(B
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns['twig']= '<[^>]*'
"let g:neocomplcache_omni_patterns['php'] = '[^. \t]->\h\w*\|\h\w*::'

"keymap

"$BI=<(9TC10L$G0\F0(B(snippet$BE83+BP:v:Q$_(B)
nnoremap j gj
onoremap j gj
xnoremap j gj
nnoremap k gk
onoremap k gk
xnoremap k gk

"$BA^F~%b!<%I$N%-!<%P%$%s%I$r(Bemacs$BIw$K(B
inoremap <C-a> <Home>
"inoremap <C-e> <End>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
"inoremap <C-n> <Down>
"inoremap <C-p> <Up>
inoremap <C-h> <BS>
inoremap <C-d> <Del>
"inoremap <C-k> <C-o>D

"$B2~9T$GJd40%&%#%s%I%&$rJD$8$k(B
inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
"tab$B$GJd408uJd$NA*Br$r9T$&(B
inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<Up>" : "\<S-TAB>"
"C-h, BS$B$GJd40%&%#%s%I%&$r3N<B$KJD$8$k(B
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<BS>"
"C-y$B$GJd408uJd$N3NDj(B
inoremap <expr><C-y> neocomplcache#close_popup()
"C-e$B$GJd40$N%-%c%s%;%k$7!"%&%#%s%I%&$rJD$8$k!#%]%C%W%"%C%W$,3+$$$F$$$J$$$H$-$O(BEnd$B%-!<(B
inoremap <expr><C-e> pumvisible() ? neocomplcache#cancel_popup() : "\<End>"
"C-g$B$GJd40$r85$KLa$9(B
inoremap <expr><C-g> neocomplcache#undo_completion()
"vim$BI8=`$N%-!<%o!<%IJd40$rCV$-49$($k(B
inoremap <expr><C-n> neocomplcache#manual_keyword_complete()
"C-p$B$G>e%-!<(B
inoremap <C-p> <Up>
"$BJd408uJd$N6&DLJ8;zNs$rJd40$9$k(B($B%7%'%kJd40$N$h$&$JF0:n(B)
inoremap <expr><C-l> neocomplcache#complete_common_string()
"$B%9%K%Z%C%H$rE83+$9$k!#%9%K%Z%C%H$,4X78$7$J$$$H$3$m$G$O9TKv$^$G:o=|(B
imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-o>D"
smap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-o>D"
"$B%*%`%KJd40$N<jF08F$S=P$7(B
inoremap <expr><C-Space> neocomplcache#manual_omni_complete()

"$B%9%K%Z%C%H%U%!%$%k$rJT=8$9$k(B
nnoremap <Space>nes :NeoComplCacheEditSnippets

"$B%$%s%/%k!<%IJd40!#$h$/$o$+$i$J$$!#=i4|2=$N$_$KN1$a$k(B
"$BDL>o$O@_Dj$9$kI,MW$O$J$$$i$7$$!#(B
"Vim$BI8=`$N%$%s%/%k!<%IJd40$rLOJo$7$F$$$k$=$&$J$N$G!"$=$A$i$rJY6/$9$k(B
if !exists('g:neocomplcache_include_paths')
    let g:neocomplcache_include_paths = {}
endif
if !exists('g:neocomplcache_include_patterns')
    let g:neocomplcache_include_patterns = {}
endif
if !exists('g:neocomplcache_ctags_arguments_list')
    let g:neocomplcache_ctags_arguments_list = {}
endif

"ctags$B$N0z?t(B
"let g:neocomplcache_ctags_arguments_list = {
"  \ 'php' : '-R --languages=PHP --langmap=PHP:.php.inc --php-types=c+f+d'
"  \ }


" TwitVim
let twitvim_login= "webcrafts, 652527"
let twitvim_count=100

let g:SimplenoteUsername = "webcrafts098@gmail.com"
let g:SimplenotePassword = "652527"
