" setting
" VIMの内部エンコードをUTF-8とする
set encoding=UTF-8
" ファイルの読み込みのエンコード順を指定
set fileencodings=UTF-8,CP932
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" undoファイルもいりません
set noundofile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" 見た目系
" 行番号を表示
set number
" 通常文字列の文字色を黄色にする
hi Constant ctermfg=14
" カーソルラインの設定を初期化
hi clear CursorLine
" アンダーラインを引く(terminal)
hi CursorLine term=underline ctermfg=NONE ctermbg=black
" 行番号の強調表示
hi CursorLineNr term=bold ctermfg=red ctermbg=NONE
" 現在の行を強調表示
set cursorline
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
" set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch

" ファイル名表示
set statusline=%F
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Preview]と表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" file encoding
set statusline+=[ENC=%{&fileencoding}]
" 現在行数/全行数
set statusline+=[LOW=%l/%L]
" 現在列数
set statusline+=[COL=%c]
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\^\ 
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4

" 検索系
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" シンタックスハイライトの有効化
syntax enable
