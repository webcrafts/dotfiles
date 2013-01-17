if filereadable($VIM . '/vimrc') && filereadable($VIM . '/ViMrC')
  " tags$B%U%!%$%k$N=EJ#KI;_(B
  set tags=./tags,tags
endif

if has('mac')
  " Mac$B$G$O%G%U%)%k%H$N(B'iskeyword'$B$,(Bcp932$B$KBP1~$7$-$l$F$$$J$$$N$G=$@5(B
  set iskeyword=@,48-57,_,128-167,224-235
endif

" NeoBundle 2012/05/07

set nocompatible

filetype off

if has('vim_starting')
set runtimepath+=~/.vim/neobundle/neobundle.vim

call neobundle#rc(expand('.vim/neobundle'))
endif

NeoBundle 'https://github.com/Shougo/neobundle.vim'
NeoBundle 'https://github.com/Shougo/vimproc.git'
NeoBundle 'https://github.com/Shougo/unite.vim.git'
NeoBundle 'https://github.com/Shougo/vimshell.git'
NeoBundle 'https://github.com/Shougo/neocomplcache'
NeoBundle 'https://github.com/Shougo/neocomplcache-snippets-complete'
NeoBundle 'https://github.com/tyru/open-browser.vim.git'
NeoBundle 'https://github.com/thinca/vim-tabrecent.git'
NeoBundle 'https://github.com/tacroe/unite-mark.git'
NeoBundle 'https://github.com/tpope/vim-speeddating.git'
NeoBundle 'https://github.com/ujihisa/mdv.git'
NeoBundle 'https://github.com/ujihisa/neco-look.git'
NeoBundle 'https://github.com/mattn/wwwrenderer-vim.git'
NeoBundle 'https://github.com/mattn/webapi-vim.git'
NeoBundle 'https://github.com/t9md/vim-textmanip.git'
NeoBundle 'https://github.com/Lokaltog/vim-powerline.git'
NeoBundle 'https://github.com/nathanaelkane/vim-indent-guides.git'
NeoBundle 'https://github.com/mattn/zencoding-vim.git'
NeoBundle 'https://github.com/tsukkee/lingr-vim'
<<<<<<< HEAD
NeoBundle 'https://github.com/thinca/vim-quickrun.git'
=======
NeoBundle 'https://github.com/tpope/vim-rails.git'
>>>>>>> update


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
set shiftwidth=2
set backup
set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932
set number

if has("gui_running")
  set fuoptions=maxvert,maxhorz
  " au GUIEnter * set fullscreen
  set showtabline=2  " $B%?%V$r>o$KI=<((B
  set imdisable  " IM$B$rL58z2=(B
  set transparency=20  " $BF)L@EY$r;XDj(B
  set antialias
  set guifont=Ricty:h14
  colorscheme railscast
endif

if has('gui_macvim')
    set showtabline=2  " $B%?%V$r>o$KI=<((B
    set imdisable  " IM$B$rL58z2=(B
    set transparency=40  " $BF)L@EY$r;XDj(B
    set antialias
    set guifont=Monaco:h14
    colorscheme darkblue
endif

" trinity

nmap <F8> :TrinityToggleAll<CR>
nmap <F9> :TrinityToggleSourceExplorer<CR>
nmap <F10> :TrinityToggleTagList<CR>
nmap <F11> :TrinityToggleNERDTree<CR>

" NERDTree

nmap <F7> :NERDTreeToggle<CR>
let file_name = expand("%")
" if has('vim_starting') && file_name == ""
"    autocmd VimEnter * NERDTree /Users/suzuki/
" endif

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
" set guioptions+=a
" set ttymouse=xterm2

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
set ruler
set t_Co=256

"$B%9%F!<%?%9%i%$%s$KJ8;z%3!<%I$H2~9TJ8;z$rI=<($9$k(B
set statusline=%F%m%r%h%w\%=[TYPE=%Y]\[FORMAT=%{&ff}]\[ENC=%{&fileencoding}]\[LOW=%l/%L]

if winwidth(0) >= 120
 set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %F%=[%{GetB()}]\ %{fugitive#statusline()}\ %l,%c%V%8P
else
 set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %f%=[%{GetB()}]\ %{fugitive#statusline()}\ %l,%c%V%8P
endif

"$BF~NO%b!<%I;~!"%9%F!<%?%9%i%$%s$N%+%i!<$rJQ99(B
augroup InsertHook
autocmd!
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
" $B%$%s%G%s%H(B Indent
"-------------------------------------------------------------------------------
set autoindent   " $B<+F0$G%$%s%G%s%H(B
set smartindent  " $B?7$7$$9T$r3+;O$7$?$H$-$K!"?7$7$$9T$N%$%s%G%s%H$r8=:_9T$HF1$8NL$K$9$k!#(B
set cindent      " C$B%W%m%0%i%`%U%!%$%k$N<+F0%$%s%G%s%H$r;O$a$k(B
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

"-------------------------------------------------------------------------------
" $BJT=84XO"(B Edit
"-------------------------------------------------------------------------------

" insert$B%b!<%I$rH4$1$k$H(BIME$B%*%U(B
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
" inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

" ye$B$G$=$N%+!<%=%k0LCV$K$"$kC18l$r%l%8%9%?$KDI2C(B
nmap ye ;let @"=expand("<cword>")<CR>
" Visual$B%b!<%I$G$N(Bp$B$GA*BrHO0O$r%l%8%9%?$NFbMF$KCV$-49$($k(B
vnoremap p <Esc>;let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" Tab$B%-!<$r6uGr$KJQ49(B
set expandtab

" $B%3%s%^$N8e$K<+F0E*$K%9%Z!<%9$rA^F~(B
inoremap , ,<Space>

"  Insert mode$BCf$GC18lC10L(B/$B9TC10L$N:o=|$r%"%s%I%%2DG=$K$9$k(B
inoremap <C-u>  <C-g>u<C-u>
inoremap <C-w>  <C-g>u<C-w>

" :Pt$B$G%$%s%G%s%H%b!<%I@ZBX(B
command! Pt :set paste!

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
noremap <C-U> :UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
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

" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 1


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

" zencoding$BO"7H(B
let g:use_zen_complete_tag = 1

"$B%*%`%KJd40(B
augroup SetOmniCompletionSetting
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType ctp setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType twig setlocal omnifunc=htmlcomplete#CompleteTags
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

augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype eruby inoremap <buffer> </ </<C-x><C-o>
augroup END
