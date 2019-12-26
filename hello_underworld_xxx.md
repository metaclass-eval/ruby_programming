Contents
=================

TOC

# 1. Hello, Underworld! (闇へのはじめの一歩)

コンピュータプログラミングが生まれいにしえの時代よりプログラミング言語を紹介するときには

```
Hello, Underworld!
```

と画面に表示させる例題を紹介するという慣わしになっています (嘘です)。


以下、かなり説明を省略しますが、ここは大事というところは頑張って丁寧に説明します。頑張ってついてきてください。

## 1.1. Start Terminal (ターミナル起動)

省略します。

## 1.2. Make a source code (ソースコード作成)

Githubにあるので作らないで良いです。

## 1.3. Run (実行)

git cloneしてsrc/hello_underworld.rbをどこか好きなところへコピーして以下のように実行してください。

```
$ ruby hello_underworld.rb
"Hello, Underworld!"
```

上記のように表示されて *hello_underworld.rb* がなくなっていれば正常動作です。

Note (注意)
* 普通はこのような自爆コードは書きません。
* Rubyに限らず似たようなことはどの言語でもできます。

## 1.4. Explanation (解説)

コードの解説をします。

hello_underworld.rb
```
File.write($0, "p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')")
puts `ruby #{$0}`
File.unlink $0
```

File.write("file", "code")
* ファイルにRuby codeを出力しています。

$0
* これは呼び出したファイル名を表す組み込み変数（グローバル変数）です。
* ここでは *hello_underworld.rb* になります。

File.write($0, "...")
* つまり、これは呼び出したファイルに上書きして新しいコードを作っています。
* これでエラーにならないのは、Rubyインタープリタは起動すると全てのソースコードを一旦メモリ上にロードするので、その後にソースコード（ファイル）が削除されても大丈夫なのです。

``
* バッククォートで囲むとそれを外部コマンド（Unixコマンド）としてサブプロセスで動かします。

#{}
* これは文字列中（""ダブルクオーテーション内）で変数展開するための記号です。

#{$0}
* これは実際には *hello_underworld.rb* になります。

`ruby #{$0}`
* これは実際には `ruby hello_underworld.rb` になります。

File.unlink()
* これはファイルを削除するメソッドです。

File.unlink($0)
* これは実際には *File.unlink("hello_underworld.rb")* になります。
* 自分自身を削除するなんてことは、普通しません。

次に新しく生成された *hello_underworld.rb* の中身を見ていきます。

File.write($0, "p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')")
* このコードにより以下のようなファイルが作成されます。

```
p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')
```

$0.split('_')
* これは実際には *"hello_underworld.rb".split('_')* になります。
* 結果は、 *["hello", "underworld.rb"]*　(配列)になります。

map(&:capitalize)
* これは配列の各要素に *capitalize* メソッドを適用するRuby idiom（よく使うTips）です。
* capitalizeはStringオブジェクトのメソッドです。

$0.split('_').map(&:capitalize)
* つまり、これは実際には *["Hello", "Underworld.rb"]* になります。

join(", ")
* これは配列を引数の文字列で連結して文字列を返すメソッドです。

$0.split('_').map(&:capitalize).join(", ")
* これは実際には *"Hello, Underworld.rb"* になります。

gsub(/aaa/, 'bbb')
* これは文字列置換のメソッドで、文字列中のaaaをbbbに置き換えます。

$0.split('_').map(&:capitalize).join(", ").gsub(/.rb/, '!')
* これは実際には *"Hello, Underworld!"* になります。

p
* 人間に読みやすい形でオブジェクトを表示して改行します。

p $0.split('_').map(&:capitalize).join(", ").gsub(/.rb/, '!')
* 結果、"Hello, Underworld!" と表示されます。

# 2. Summary (まとめ)

Remarks (注目するべきポイント)
* Rubyistは簡単な処理であればメソッドとブロックを横に繋げて一行で書くクセがあります。
* これがRubyで実現しやすいのは
 1. メソッドやブロックの戻り値（オブジェクト）に対して再びメソッド（ブロック）を適用できる
 2. メソッド（ブロック）の戻り値が直感的に対応するオブジェクトであるように実装されている
 から、です。
* コードを読むときの意識の流れとしては、1) 左から右、2) 上から下、です。
* 調子に乗ってカスケードを長くするとバグが入って死亡フラグが立ちます。




