Ox-syntax.vim
=============

Ox / Oxmetrics 用の syntax file.

## 概要
統計学や経済学の分野で使われるという ox 言語のよりよいシンタックスハイライトを提供しようという試みです．
この言語についてはまだあまり詳しくないので，コメントやご意見，pull request 大歓迎です．

## 機能
今のところそれほど多くの機能はありません．

* reserved keyword のハイライト．ただし一部の色分けは暫定的．
* 数字 : 整数と 1.93 というような素直な小数に対応．
* 文字列 : 対応済み．
* コメント : 対応済み．
* `#include` など : 一応対応済み．バグがある予感．
* To-do : コメントの中での文字列 TODO は TODO のつもりでハイライトされます．
* 組み込み関数 : 全て色付けする設定になっていますが，すべきかどうか．
* ftplugin でコメントの継続などが正しく行われるようにサポート．

上記の機能も完全にテストされたわけではなく，バグがあるかもしれません．
なにか見つけたら教えてください．


## インストール
`neobundle` をお使いなら

```vim
Neobundle 'git://github.com/lesguillemets/Ox-syntax.vim.git'
```

を `.vimrc` に置き， `:NeoBundleInstall` してください．
できたばかりでアップデートが頻繁にあるかもしれないプラグインなので，
何らかの plugin manager を使ったほうがいいと思います．

Plugin manager を使いたくない場合は，一連のファイルをダウンロードして，
あなたの `$VIM/` に置いてください．例えば僕の環境では 
`syntax/ox.vim` は `~/.vim/syntax/ox.vim` に置きます．

## 設定
インストールすればそのまま使えるはずで，設定項目はほとんどありません．

Built-in functions のハイライトをしたくない場合には， `.vimrc` に

```vim
let g:OXSyntaxHighlightBuiltins=0
```

を書き足してみてください．

## TODO

* reserved keywords の分類や色分けを見直す．
* 関数定義を何とかハイライトできないか．
* 数字の包括的サポート
* 正規表現の見直し
* もっといいことを考える
* 必要でかつ可能なら，文脈に応じた色分けを．
* Ox のお勉強

## スクリーンショット
準備中．

## 現在のハイライト設定

こんな表を作ろうかと思っている．

|object            |grouped as  |highlighted as|
|------            |----------- |--------------|
|TODO (in comment) |oxTodo      |Todo          |
|0,1,2,3,...       |oxNumber    |Constant      |
|built-in functions|oxBuiltinxxx|Function      |

がまだできてません．

## 作者

lesguillemets. わたしです．Ox を薦めてくれた saji 氏に感謝を．

Ox も vim もそんなに詳しくないし，comment や issue や pull request 大歓迎です．

## ライセンス
MIT.

## 歴史

22 Nov 2013 : はじまり．   
23 Nov 2013 : 基本的な機能をひと通り（一応）実装．

