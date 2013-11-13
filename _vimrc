" vimrc 2013/11/10 version

set nocompatible

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/neobundle/neobundle.vim
endif
call neobundle#rc(expand('.vim/neobundle'))

" NeoBundle List
NeoBundle 'https://github.com/Shougo/neobundle.vim'
NeoBundle 'https://github.com/Shougo/neocomplcache'
NeoBundle 'https://github.com/Shougo/unite.vim.git'
NeoBundle 'https://github.com/Shougo/neosnippet'
NeoBundle 'https://github.com/tacroe/unite-mark.git'
NeoBundle 'https://github.com/thinca/vim-tabrecent.git'
NeoBundle 'https://github.com/tpope/vim-speeddating.git'
NeoBundle 'https://github.com/mattn/wwwrenderer-vim.git'
NeoBundle 'https://github.com/t9md/vim-textmanip.git'
NeoBundle 'https://github.com/Lokaltog/vim-powerline.git'
NeoBundle 'https://github.com/nathanaelkane/vim-indent-guides.git'
NeoBundle 'https://github.com/mattn/zencoding-vim.git'
NeoBundle 'https://github.com/thinca/vim-quickrun.git'
NeoBundle 'https://github.com/tpope/vim-bundler.git'
NeoBundle 'https://github.com/fuenor/qfixgrep.git'
NeoBundle 'https://github.com/tpope/vim-fugitive.git'
NeoBundle 'https://github.com/scrooloose/nerdtree.git'
NeoBundle 'https://github.com/Shougo/vimshell.git'
NeoBundle 'https://github.com/kien/ctrlp.vim.git'
NeoBundle 'Shougo/vimproc', {
\ 'build': {
\ 'windows': 'make -f make_mingw32.mak',
\ 'cygwin': 'make -f make_cygwin.mak',
\ 'mac': 'make -f make_mac.mak',
\ 'unix': 'make -f make_unix.mak',
\ }
\}
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'git://git.wincent.com/command-t.git'
NeoBundle 'https://github.com/basyura/TweetVim.git'
NeoBundle 'https://github.com/mattn/webapi-vim'
" NeoBundle 'https://github.com/scrooloose/syntastic.git'
" NeoBundle 'https://github.com/tyru/open-browser.vim'
NeoBundle 'https://github.com/basyura/twibill.vim'
NeoBundle 'https://github.com/h1mesuke/unite-outline'
NeoBundle 'https://github.com/basyura/bitly.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'Markdown'
NeoBundle 'https://github.com/tpope/vim-markdown'
NeoBundle 'https://github.com/glidenote/memolist.vim'
NeoBundle 'https://github.com/glidenote/newdayone.vim'
NeoBundle 'https://github.com/tpope/vim-rails.git'
NeoBundle 'rails.vim'
NeoBundle 'https://github.com/basyura/unite-rails'
" NeoBundle 'https://github.com/tpope/vim-endwise'
NeoBundle 'https://github.com/vim-scripts/ruby-matchit'
NeoBundle 'https://github.com/tpope/vim-surround'
NeoBundle 'https://github.com/mattn/emmet-vim'
NeoBundle 'https://github.com/kana/vim-fakeclip.git'
NeoBundle 'pentie/VimRepress'

if filereadable($VIM . '/vimrc') && filereadable($VIM . '/ViMrC')
  " tagsファイルの重複防止
  set tags=./tags,tags
endif

if has('mac')
  " Macではデフォルトの'iskeyword'がcp932に対応しきれていないので修正
  set iskeyword=@,48-57,_,128-167,224-235
endif

"-------------------------------------------------------------------------------
" 基本設定 Basics
"-------------------------------------------------------------------------------
let mapleader = ","              " キーマップリーダー
set scrolloff=5                  " スクロール時の余白確保
set textwidth=0                  " 一行に長い文章を書いていても自動折り返しをしない
set nobackup                     " バックアップ取らない
set autoread                     " 他で書き換えられたら自動で読み直す
set noswapfile                   " スワップファイル作らない
set hidden                       " 編集中でも他のファイルを開けるようにする
set backspace=indent,eol,start   " バックスペースでなんでも消せるように
set formatoptions=lmoq           " テキスト整形オプション，マルチバイト系を追加
set vb t_vb=                     " ビープをならさない
set browsedir=buffer             " Exploreの初期ディレクトリ
set whichwrap=b,s,h,l,<,>,[,]    " カーソルを行頭、行末で止まらないようにする
set showcmd                      " コマンドをステータス行に表示
set showmode                     " 現在のモードを表示
set viminfo='50,<1000,s100,\"50  " viminfoファイルの設定
set modelines=3                  " モードラインは無効
set foldmethod=indent
set foldcolumn=1
set foldlevel=0

" 画面分割
noremap <silent> <f5> :split<return>
noremap <silent> <f6> :vsplit<return>

filetype on
filetype plugin indent on
set helpfile=$VIMRUNTIME/doc/help.txt

autocmd FileType c,cpp,perl set cindent
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
autocmd FileType ruby set tabstop=2 shiftwidth=2 expandtab
set autoindent
set shiftwidth=2
set backup
set enc=utf-8
set fenc=utf-8
set encoding=utf-8
set fileencodings=iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
set number
set showmatch
set list
set listchars=tab:>.,trail:_,extends:>,precedes:< " 不可視文字の表示形式
set display=uhex      " 印字不可能文字を16進数で表示
set relativenumber

if has("gui_running")
  set fuoptions=maxvert,maxhorz
  " au GUIEnter * set fullscreen
  set showtabline=2  " タブを常に表示
  set imdisable  " IMを無効化
  set transparency=20  " 透明度を指定
  set antialias
  set guifont=Source Code Pro:h14
  colorscheme railscast
endif

if has('gui_macvim')
    set showtabline=2  " タブを常に表示
    set imdisable  " IMを無効化
    set antialias
    set guifont=Monaco:h12
    colorscheme railscasts
    set guioptions+=a
endif
set clipboard+=autoselect
syntax on

"-------------------------------------------------------------------------------
" NERDTree
"-------------------------------------------------------------------------------

nmap <F7> :NERDTreeToggle<CR>
let file_name = expand("%")
" if has('vim_starting') && file_name == ""
"    autocmd VimEnter * NERDTree /Users/suzuki/
" endif

hi ZenkakuSpace gui=underline guibg=DarkBlue cterm=underline ctermfg=LightBlue " 全角スペースの定義
match ZenkakuSpace /　/             " 全角スペースの色を変更""
" カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

hi clear CursorLine
hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

"Escの2回押しでハイライト消去
nnoremap <ESC><ESC> :nohlsearch<CR><ESC>

" Ctrl-iでヘルプ
nnoremap <C-i>  :<C-u>help<Space>
" カーソル下のキーワードをヘルプでひく
nnoremap <C-i><C-i> :<C-u>help<Space><C-r><C-w><Enter>

" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge
" 保存時にtabをスペースに変換する
autocmd BufWritePre * :%s/\t/  /ge

" CTRL-hjklでウィンドウ移動
nnoremap <C-j> ;<C-w>j
nnoremap <C-k> ;<C-k>j
nnoremap <C-l> ;<C-l>j
nnoremap <C-h> ;<C-h>j

"-------------------------------------------------------------------------------
" コピペ関連
"-------------------------------------------------------------------------------
set clipboard=unnamed,autoselect
set mouse=a

" 挿入モードでCtrl+kを押すとクリップボードの内容を貼り付けられるようにする "
imap <C-p>  <ESC>"*pa

" Ev/Rvでvimrcの編集と反映
command! Ev edit $MYVIMRC
command! Rv source $MYVIMRC

set helpfile=$VIMRUNTIME/doc/help.txt

" ファイルタイプ判定をon
filetype plugin on

" nmap <silent> <F5> ggVG
" nmap <silent> <F6> :%y<CR>

"-------------------------------------------------------------------------------
" ステータスライン StatusLine
"-------------------------------------------------------------------------------
set laststatus=2 " 常にステータスラインを表示
set ruler
set t_Co=256

"ステータスラインに文字コードと改行文字を表示する
" set statusline=%F%m%r%h%w\%=[TYPE=%Y]\[FORMAT=%{&ff}]\[ENC=%{&fileencoding}]\[LOW=%l/%L]

" if winwidth(0) >= 120
" set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %F%=[%{GetB()}]\  %l,%c%V%8P
" else
" set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %f%=[%{GetB()}]\  %l,%c%V%8P
" endif

"入力モード時、ステータスラインのカラーを変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#000033 ctermfg=cyan
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90 ctermfg=white
augroup END

"自動的に QuickFix リストを表示する
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
" インデント Indent
"-------------------------------------------------------------------------------
set autoindent   " 自動でインデント
set smartindent  " 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする。
set cindent      " Cプログラムファイルの自動インデントを始める
set tabstop=4 shiftwidth=4 softtabstop=0

if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "そのファイルタイプにあわせたインデントを利用する
  filetype indent on
  " これらのftではインデントを無効に
  "autocmd FileType php filetype indent off

  autocmd FileType html :set indentexpr=
  autocmd FileType xhtml :set indentexpr=
endif

"-------------------------------------------------------------------------------
" 補完・履歴 Complete
"-------------------------------------------------------------------------------
set wildmenu               " コマンド補完を強化
set wildchar=<tab>         " コマンド補完を開始するキー
set wildmode=list:full     " リスト表示，最長マッチ
set history=1000           " コマンド・検索パターンの履歴数
set complete+=k            " 補完に辞書ファイル追加

" Ex-modeでの<C-p><C-n>をzshのヒストリ補完っぽくする
cnoremap <C-p> <Up>
cnoremap <Up>  <C-p>
cnoremap <C-n> <Down>
cnoremap <Down>  <C-n>

"-------------------------------------------------------------------------------
" 編集関連 Edit
"-------------------------------------------------------------------------------

" insertモードを抜けるとIMEオフ
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
" inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

" yeでそのカーソル位置にある単語をレジスタに追加
nmap ye ;let @"=expand("<cword>")<CR>
" Visualモードでのpで選択範囲をレジスタの内容に置き換える
vnoremap p <Esc>;let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" Tabキーを空白に変換
set expandtab

" コンマの後に自動的にスペースを挿入
inoremap , ,<Space>

"  Insert mode中で単語単位/行単位の削除をアンドゥ可能にする
inoremap <C-u>  <C-g>u<C-u>
inoremap <C-w>  <C-g>u<C-w>

" :Ptでインデントモード切替
command! Pt :set paste!

"
" 括弧を自動補完
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

" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge
" 保存時にtabをスペースに変換する
autocmd BufWritePre * :%s/\t/  /ge

" 日時の自動入力
inoremap <expr> ,df strftime('%Y/%m/%d %H:%M:%S')
inoremap <expr> ,dd strftime('%Y/%m/%d')
inoremap <expr> ,dt strftime('%H:%M:%S')

"-------------------------------------------------------------------------------
" unite.vim
"-------------------------------------------------------------------------------

"" 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-B> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
noremap <C-U> :UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
" 初期設定関数を起動する
au FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " Overwrite settings.
endfunction
" 様々なショートカット
call unite#custom#profile('files', 'substitute_patterns', {
            \ 'pattern': '\$\w\+',
            \ 'subst': '\=eval(submatch(0))',
            \ 'priority': 200,
            \ })
call unite#custom#profile('files', 'substitute_patterns', {
            \ 'pattern': '^@@',
            \ 'subst': '\=fnamemodify(expand("#"), ":p:h")."/"',
            \ 'priority': 2,
            \ })
call unite#custom#profile('files', 'substitute_patterns', {
            \ 'pattern': '^@',
            \ 'subst': '\=getcwd()."/*"',
            \ 'priority': 1,
            \ })
call unite#custom#profile('files', 'substitute_patterns', {
            \ 'pattern': '^;r',
            \ 'subst': '\=$VIMRUNTIME."/"',
            \ 'priority': 1,
            \ })
"call unite#custom#profile('files', 'substitute_patterns', {
"            \ 'pattern': '^\~',
"            \ 'subst': escape($HOME, '\'),
"            \ 'priority': -2,
"            \ })
call unite#custom#profile('files', 'substitute_patterns', {
            \ 'pattern': '\\\@<! ',
            \ 'subst': '\\ ',
            \ 'priority': -20,
            \ })
call unite#custom#profile('files', 'substitute_patterns', {
            \ 'pattern': '\\ \@!',
            \ 'subst': '/',
            \ 'priority': -30,
            \ })
if has('win32') || has('win64')
    call unite#custom#profile('files', 'substitute_patterns', {
                \ 'pattern': '^;p',
                \ 'subst': 'C:/Program Files/',
                \ 'priority': 1,
                \ })
    call unite#custom#profile('files', 'substitute_patterns', {
                \ 'pattern': '^;v',
                \ 'subst': '~/vimfiles/',
                \ 'priority': 1,
                \ })
else
    call unite#custom#profile('files', 'substitute_patterns', {
                \ 'pattern': '^;v',
                \ 'subst': '~/.vim/',
                \ 'priority': 1,
                \ })
endif

"-------------------------------------------------------------------------------
" Project.vim
"-------------------------------------------------------------------------------
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

"-------------------------------------------------------------------------------
" NEOCOMPLETECACHE
"-------------------------------------------------------------------------------
"タグ補完
"タグファイルの場所
augroup SetTagsFile
  autocmd!
  autocmd FileType php set tags=$HOME/.vim/tags/php.tags
augroup END

set completeopt=menuone
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_max_list = 20

let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化
if !exists('g:neocomplcache_member_prefix_patterns')
  let g:neocomplcache_member_prefix_patterns = {}
endif
let g:neocomplcache_member_prefix_patterns['php'] = '->\|::'

"スニペット補完
"標準で用意されているスニペットを無効にする。初期化前に設定する
let g:neocomplcache_snippets_disable_runtime_snippets = 1
"スニペットファイルの置き場所
let g:neocomplcache_snippets_dir = $HOME.'/.vim/snippets'
let g:NeoComplCache_SmartCase = 1
let g:NeoComplCache_EnableCamelCaseCompletion = 1
let g:NeoComplCache_EnableUnderbarCompletion = 1
let g:NeoComplCache_MinSyntaxLength = 3
let g:neocomplcache_enable_auto_select = 1


" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" zencoding連携
let g:use_zen_complete_tag = 1

"-------------------------------------------------------------------------------
" QuickRun
"-------------------------------------------------------------------------------
let g:quickrun_config = {'*': {'split': ''}}
set splitbelow
set splitright
let g:quickrun_config = {
\   "cpp/g++" : {
\       "cmdopt" : "-std=c++0x",
\       "hook/time/enable" : 1,
\       "outputter/buffer/split" : ":botright",
\       "outputter/buffer/close_on_empty" : 1
\   },
\}
"-------------------------------------------------------------------------------
" vimshell
"-------------------------------------------------------------------------------
let g:vimproc_dll_path = '.vim/autoload/proc.so'
let g:vimproc_dll_path = '.vim/autoload/vimproc_mac.so'
nnoremap <silent> ,is :VimShell<CR>
nnoremap <silent> ,irb :VimShellInteractive irb<CR>
nnoremap <silent> ,pry :VimShellInteractive pry<CR>
let g:vimshell_prompt_expr = 'getcwd()." > "'
let g:vimshell_prompt_pattern = '^\f\+ > '

"-------------------------------------------------------------------------------
" TweetVim
"-------------------------------------------------------------------------------
" タイムライン選択用の Unite を起動する
nnoremap <silent> t :Unite tweetvim<CR>
" 発言用バッファを表示する
nnoremap <silent> ts :TweetVimSay<CR>

" スクリーン名のキャッシュを利用して、neocomplcache で補完する
if !exists('g:neocomplcache_dictionary_filetype_lists')
  let g:neocomplcache_dictionary_filetype_lists = {}
endif
let neco_dic = g:neocomplcache_dictionary_filetype_lists
let neco_dic.tweetvim_say = $HOME . '/.tweetvim/screen_name'
"-------------------------------------------------------------------------------
" Memolist
"-------------------------------------------------------------------------------
map <Leader>mn  :MemoNew<CR>
map <Leader>ml  :MemoList<CR>
map <Leader>mg  :MemoGrep<CR>
let g:memolist_memo_suffix = "md"
let g:memolist_memo_date = "%Y-%m-%d %H:%M"
let g:memolist_memo_date = "epoch"
let g:memolist_memo_date = "%D %T"
let g:memolist_prompt_tags = 1
let g:memolist_prompt_categories = 1
let g:memolist_qfixgrep = 1
let g:memolist_path = "Dropbox/998_work/memo/"
let g:memolist_template_dir_path = "Dropbox/998_work/memo/"
let g:memolist_unite        = 1
" let g:memolist_unite_source = "file_rec"
let g:memolist_unite_option = "-auto-preview -start-insert"
"-------------------------------------------------------------------------------
" DayOne
"-------------------------------------------------------------------------------
map <Leader>nd  :NewDayOne<CR>
"-------------------------------------------------------------------------------
" Unite Rails
"-------------------------------------------------------------------------------
function! UniteRailsSetting()
  nnoremap <buffer><C-H><C-H><C-H>  :<C-U>Unite rails/view<CR>
  nnoremap <buffer><C-H><C-H>       :<C-U>Unite rails/model<CR>
  nnoremap <buffer><C-H>            :<C-U>Unite rails/controller<CR>
  nnoremap <buffer><C-H>c           :<C-U>Unite rails/config<CR>
  nnoremap <buffer><C-H>s           :<C-U>Unite rails/spec<CR>
  nnoremap <buffer><C-H>m           :<C-U>Unite rails/db -input=migrate<CR>
  nnoremap <buffer><C-H>l           :<C-U>Unite rails/lib<CR>
  nnoremap <buffer><expr><C-H>g     ':e '.b:rails_root.'/Gemfile<CR>'
  nnoremap <buffer><expr><C-H>r     ':e '.b:rails_root.'/config/routes.rb<CR>'
  nnoremap <buffer><expr><C-H>se    ':e '.b:rails_root.'/db/seeds.rb<CR>'
  nnoremap <buffer><C-H>ra          :<C-U>Unite rails/rake<CR>
  nnoremap <buffer><C-H>h           :<C-U>Unite rails/heroku<CR>
endfunction
aug MyAutoCmd
  au User Rails call UniteRailsSetting()
aug END
"-------------------------------------------------------------------------------
" endwise
"-------------------------------------------------------------------------------
let g:endwise_no_mappings=1

autocmd User Rails.view*                 NeoSnippetSource ~/.vim/snippet/ruby.rails.view.snip
autocmd User Rails.controller*           NeoSnippetSource ~/.vim/snippet/ruby.rails.controller.snip
autocmd User Rails/db/migrate/*          NeoSnippetSource ~/.vim/snippet/ruby.rails.migrate.snip
autocmd User Rails/config/routes.rb      NeoSnippetSource ~/.vim/snippet/ruby.rails.route.snip


function! s:do_rails_autocmd()
  if !exists("b:rails_root")
    return
  endif

  let buf = rails#buffer()
  let type = "-" . buf.type_name()
  let path = '/' . buf.name()
  if path =~ '[ !#$%\,]'
    let path = ''
  endif

  if type != '-'
    execute "silent doautocmd User Rails" . s:gsub(type, '-', '.')
  endif

  if path != ''
    execute "silent doautocmd User Rails" . path
  endif
endfunction
autocmd User Rails call s:do_rails_autocmd()
"-------------------------------------------------------------------------------
" QuickRun Markdown
"-------------------------------------------------------------------------------
let g:quickrun_config = {}
let g:quickrun_config.markdown = {
      \ 'outputter' : 'null',
      \ 'command'   : 'open',
      \ 'cmdopt'    : '-a',
      \ 'args'      : 'Marked',
      \ 'exec'      : '%c %o %a %s',
      \ }

" Anywhere SID.
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction
"-------------------------------------------------------------------------------
" Set tabline.
"-------------------------------------------------------------------------------
function! s:my_tabline()  "{{{
  let s = ''
  for i in range(1, tabpagenr('$'))
    let bufnrs = tabpagebuflist(i)
    let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
    let no = i  " display 0-origin tabpagenr.
    let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
    let title = fnamemodify(bufname(bufnr), ':t')
    let title = '[' . title . ']'
    let s .= '%'.i.'T'
    let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
    let s .= no . ':' . title
    let s .= mod
    let s .= '%#TabLineFill# '
  endfor
  let s .= '%#TabLineFill#%T%=%#TabLine#'
  return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2 " 常にタブラインを表示

" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ

map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tc 新しいタブを一番右に作る
map <silent> [Tag]x :tabclose<CR>
" tx タブを閉じる
map <silent> [Tag]n :tabnext<CR>
" tn 次のタブ
map <silent> [Tag]p :tabprevious<CR>
" tp 前のタブ



