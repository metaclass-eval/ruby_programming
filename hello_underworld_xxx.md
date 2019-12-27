# Hello, Underworld! (闇へのはじめの一歩)

TOC

----

## 1. First of all (はじめに)

Since the computer programming was born a long, long time ago, it has been a convension to show (コンピュータプログラミングが生まれた、いにしえの時代よりプログラミング言語を紹介するときには)

```
Hello, Underworld!
```

in the screen as an example when we introduce a programming language (just kidding, sorry). (と画面に表示させる例題を紹介するという慣わしになっています。嘘です。)

I just try my best to explain the followings with a lot of short cuts. Please follow me. (以下、かなり説明を省略しますが、ここは大事というところは頑張って丁寧に説明します。頑張ってついてきてください。)

## 2. Start Terminal (ターミナル起動)

Skip. (省略します。)

## 3. Make a source code (ソースコード作成)

Skip. You do not have to make it, b/c I pushed it in git. (Githubにあるので作らないで良いです。)

## 4. Run (実行)

Please git clone and copy the file, src/hello_underworld.rb, somewhere, and run it as follows. (git cloneしてsrc/hello_underworld.rbをどこか好きなところへコピーして以下のように実行してください。)

```
$ ruby hello_underworld.rb
"Hello, Underworld!"
```

It scceedes if you see the "Hello, Underworld!" and the source file is gone. (上記のように表示されて *hello_underworld.rb* がなくなっていれば正常動作です。)

Note (注意)
* Usually, we do not do like this. (普通はこのような自爆コードは書きません。)
* It can be implemented also in other languages than Ruby (Rubyに限らず似たようなことはどの言語でもできます。)

## 1.4. Explanation (解説)

I will explain the code. (コードの解説をします。)

hello_underworld.rb
```
File.write($0, "p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')")
puts `ruby #{$0}`
File.unlink $0
```

File.write("file", "code")
* It makes a Ruby code with creating a file. (ファイルにRuby codeを出力しています。)

$0
* This is a global variable which shows the source file name. (これは呼び出したファイル名を表す組み込み変数（グローバル変数）です。)
* i.e. it actually becomes **hello_underworld.rb""**. (ここでは *hello_underworld.rb* になります。)

File.write($0, "...")
* つまり、これは呼び出したファイルに上書きして新しいコードを作っています。
* これでエラーにならないのは、Rubyインタープリタは起動すると全てのソースコードを一旦メモリ上にロードするので、その後にソースコード（ファイル）が削除されても大丈夫なのです。

``
* バッククォートで囲むとそれを外部コマンド（Unixコマンド）としてサブプロセスで動かします。
* ちなみに、サブプロセスの標準出力が戻り値になります。バッククォートで実行しても出力はメインプロセスの標準出力には表示されませんのでご注意ください。


#{}
* これは文字列中（""ダブルクオーテーション内）で変数展開するための記号です。

#{$0}
* つまり、これは実際には **hello_underworld.rb** になります。

ruby #{$0}
* つまり、これは実際には **ruby hello_underworld.rb** になります。

File.unlink()
* これはファイルを削除するメソッドです。

File.unlink($0)
* つまり、これは実際には **File.unlink("hello_underworld.rb")** になります。
* 自分自身を削除するなんてことは、普通しません (爆)。

----

次に新しく生成された *hello_underworld.rb* の中身を見ていきます。

File.write($0, "p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')")
* このコードにより以下のように **hello_underworld.rb** が上書きされます。

hello_underworld.rb
```
p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')
```

$0.split('_')
* これは実際には **"hello_underworld.rb".split('_')** になります。
* 結果は、 **["hello", "underworld.rb"]**　(配列) になります。

map(&:capitalize)
* これは配列の各要素に *capitalize* メソッドを適用するRuby idiom（よく使うTips）です。
* capitalizeはStringオブジェクトのメソッドです。

$0.split('_').map(&:capitalize)
* つまり、これは実際には **["Hello", "Underworld.rb"]** になります。

join(", ")
* これは配列を引数の文字列で連結して文字列を返すメソッドです。

$0.split('_').map(&:capitalize).join(", ")
* つまり、これは実際には **"Hello, Underworld.rb"** になります。

gsub(/aaa/, 'bbb')
* これは文字列置換のメソッドで、文字列中のaaaをbbbに置き換えます。

$0.split('_').map(&:capitalize).join(", ").gsub(/.rb/, '!')
* つまり、これは実際には *"Hello, Underworld!"* になります。

p
* 人間に読みやすい形でオブジェクトを表示してくれます。

p $0.split('_').map(&:capitalize).join(", ").gsub(/.rb/, '!')
* 結果、**"Hello, Underworld!"** と表示されます。

## 5. Summary (まとめ)

Remarks (注目するべきポイント)
* Rubyistは簡単な処理であればメソッドとブロックを横に繋げて一行で書くクセがあります。
* これがRubyで実現しやすいのは
 1. メソッドやブロックの戻り値（オブジェクト）に対して再びメソッド（ブロック）を適用できる
 2. メソッド（ブロック）の戻り値が直感的に対応するオブジェクトであるように実装されている
 から、です。
* コードを読むときの意識の流れとしては、1) 左から右、2) 上から下、です。
* 調子に乗ってカスケードを長くするとバグが入って死亡フラグが立ちます。

処理の流れ (おさらい)

初期hello_underworld.rb
```
File.write($0, "p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')")
puts `ruby #{$0}`
File.unlink $0
```

実行時hello_underworld.rb
```
p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')
```

これが
```
puts `ruby #{$0}`
```

によってサブプロセスで実行されて、メインプロセスに結果が表示された後、メインプロセスで
```
File.unlink $0
```

が実行されて、ファイルが削除されて終了します。お疲れ様でした。

P.S.
* 全くもって無意味なコードで実用的ではありませんが、Rubyの心をわかりやすく散りばめらたつもりです。
* 楽しんでいただけたら幸いです。
* もしご質問や誤字脱字や間違え、叱咤激励等ございましたらissueに書いていただけると幸いです。

*by Metaclass Eval*


