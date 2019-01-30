" dein
if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')
  call dein#add('Shougo/dein.vim')
	call dein#add('Shougo/deoplete.nvim')
	if !has('nvim')
 	 	call dein#add('roxma/nvim-yarp')
  	call dein#add('roxma/vim-hug-neovim-rpc')
	endif
	call dein#add('zchee/deoplete-go', {'build': 'make'})

	call dein#add('scrooloose/nerdtree')
	call dein#add('fatih/vim-go')
	call dein#add('Shougo/vimproc.vim')
	call dein#add('vim-jp/vim-go-extra')
	call dein#add('SirVer/ultisnips')
	call dein#add('tomtom/tcomment_vim')
	call dein#add('Shougo/neosnippet-snippets')
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('altercation/vim-colors-solarized')

 	call dein#end()
  call dein#save_state()
endif


if dein#check_install()
  call dein#install()
endif

let g:deoplete#enable_at_startup = 1

" setting
if has("multi_lang")
	language C
endif
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
set autowrite
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
" set cursorline
" 現在の行を強調表示（縦）
" set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
" set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
" set list listchars=tab:\>\-
" Tab文字を半角スペースにする
" set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" スクリーンベル無効化
set t_vb=
set novisualbell


syntax on
filetype plugin indent on
syntax enable

" NERDTree の設定 -------------------------------------------------------------
" ディレクトリ表示の設定
let g:NERDTreeDirArrows = 1
" ctrl-n で NERDTree を起動
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeNodeDelimiter = "\u00a0"


" vim-go
let g:go_fmt_command = "goimports"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" カラーテーマ
colorscheme monokai

" バックスペース効かない問題
set backspace=indent,eol,start

if dein#tap('deoplete.nvim')
  let g:deoplete#enable_at_startup = 1
elseif dein#tap('neocomplete.vim')
  let g:neocomplete#enable_at_startup = 1
endif

