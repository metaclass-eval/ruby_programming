# Hello, Underworld! in Black Ruby (闇へのはじめの一歩) [999#]

1. [First of all (はじめに)](#1-first-of-all-%E3%81%AF%E3%81%98%E3%82%81%E3%81%AB)
2. [Start Terminal (ターミナル起動)](#2-start-terminal-%E3%82%BF%E3%83%BC%E3%83%9F%E3%83%8A%E3%83%AB%E8%B5%B7%E5%8B%95)
3. [Make a source code (ソースコード作成)](#3-make-a-source-code-%E3%82%BD%E3%83%BC%E3%82%B9%E3%82%B3%E3%83%BC%E3%83%89%E4%BD%9C%E6%88%90)
4. [Run (実行)](#4-run-%E5%AE%9F%E8%A1%8C)
5. [Explanation (解説)](#5-explanation-%E8%A7%A3%E8%AA%AC)
6. [Summary (まとめ)](#6-summary-%E3%81%BE%E3%81%A8%E3%82%81)

*このチュートリアルは約10分で終了します*

----

## 1. First of all (はじめに)

Since the computer programming was born a long, long time ago, it has been a convension to show (コンピュータプログラミングが生まれた、いにしえの時代よりプログラミング言語を紹介するときには)

```
Hello, Underworld!
```

in the screen as an example when we introduce a programming language (just kidding, sorry). (と画面に表示させる例題を紹介するという慣わしになっています。嘘です。)

I just try my best to explain the followings with a lot of skips, but please follow me. (以下、かなり説明を省略しますが、ここは大事というところは頑張って丁寧に説明します。頑張ってついてきてください。)

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

It succeeds if you can see the "Hello, Underworld!" and the source file is gone. (上記のように表示されて *hello_underworld.rb* がなくなっていれば正常動作です。)

Note (注意)
* Usually, we do not such a thing deleting itself. (普通はこのような自爆コードは書きません。)
* It can be implemented also in other languages than Ruby (Rubyに限らず似たようなことはどの言語でもできます。)

## 5. Explanation (解説)

I will explain the code. (コードの解説をします。)

**hello_underworld.rb**
```
File.write($0, "p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')")
puts `ruby #{$0}`
File.unlink $0
```

**File.write("file", "code")**
* It makes a Ruby code with creating a file. (ファイルにRuby codeを出力しています。)

**$0**
* This is a global variable which shows the source file name. (これは呼び出したファイル名を表す組み込み変数（グローバル変数）です。)
* i.e. it actually becomes **hello_underworld.rb**. (ここでは **hello_underworld.rb** になります。)

**File.write($0, "...")**
* i.e. It overwrites the file with a new code. (つまり、これは呼び出したファイルに上書きして新しいコードを作っています。)
* The error does not happen, beucase Ruby loads everything of the source code once it starts, and it does not matter even if the original source code is deleted after the loading. (これでエラーにならないのは、Rubyインタープリタは起動すると全てのソースコードを一旦メモリ上にロードするので、その後にソースコード（ファイル）が削除されても大丈夫なのです。)

**``**
* The **``** (backquote) executes the Unix command in a child process. (バッククォートで囲むとそれを外部コマンド（Unixコマンド）としてサブプロセスで動かします。)
* The output from the child process becomes the return value. Note that it does not show the output of the command in the main process. (ちなみに、サブプロセスの標準出力が戻り値になります。バッククォートで実行しても出力はメインプロセスの標準出力には表示されませんのでご注意ください。)


**#{}**
* This is the variable expansion in a string (i.e. within the "" (double quotation). (これは文字列中（""ダブルクオーテーション内）で変数展開するための記号です。)

**#{$0}**
* i.e. this becomes **hello_underworld.rb**. (つまり、これは実際には **hello_underworld.rb** になります。)

**ruby #{$0}**
* i.e. this becomes **ruby hello_underworld.rb**. (つまり、これは実際には **ruby hello_underworld.rb** になります。)

**File.unlink()**
* This deletes a file. (これはファイルを削除するメソッドです。)

**File.unlink($0)**
* i.e. this actually becomes **File.unlink("hello_underworld.rb")**. (つまり、これは実際には **File.unlink("hello_underworld.rb")** になります。)
* Usually, we never do such a thing. (自分自身を削除するなんてことは、普通しません (爆)。)

----

Next, let's see the code created during the process. (次に新しく生成された **hello_underworld.rb** の中身を見ていきます。)

**File.write($0, "p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')")**
* This code generates a new code and overwrites the original source code file. (このコードにより以下のように **hello_underworld.rb** が上書きされます。)

**hello_underworld.rb**
```
p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')
```

**$0.split('_')**
* It becomes actually ***hello_underworld.rb".split('_')** . (これは実際には **"hello_underworld.rb".split('_')** になります。)
* As a result, **["hello", "underworld.rb"]**. (結果は、 **["hello", "underworld.rb"]**　(配列) になります。)

**map(&:capitalize)**
* This applies **capitalize** method to each element of the array, which is one of typical Ruby idioms. (これは配列の各要素に *capitalize* メソッドを適用するRuby idiom（よく使うTips）です。)
* captalize is a method of String object. (capitalizeはStringオブジェクトのメソッドです。)

**$0.split('_').map(&:capitalize)**
* i.e. this becomes **["Hello", "Underworld.rb"]**. (つまり、これは実際には **["Hello", "Underworld.rb"]** になります。)

**join(", ")**
* This joins the elements into a String. (これは配列を引数の文字列で連結して文字列を返すメソッドです。)

**$0.split('_').map(&:capitalize).join(", ")**
* i.e. this becomes **"Hello, Underworld.rb"**. (つまり、これは実際には **"Hello, Underworld.rb"** になります。)

**gsub(/aaa/, 'bbb')**
* This method replaces the first String (pattern, regular expression) with the second argument. (これは文字列置換のメソッドで、文字列中のaaaをbbbに置き換えます。)

**$0.split('_').map(&:capitalize).join(", ").gsub(/.rb/, '!')**
* i.e. it becomes actually **"Hello, Underworld!"**. (つまり、これは実際には **"Hello, Underworld!"** になります。)

**p**
* It shows the object in a Human readble format. (人間に読みやすい形でオブジェクトを表示してくれます。)

**p $0.split('_').map(&:capitalize).join(", ").gsub(/.rb/, '!')**
* Then,  it becomes **"Hello, Underworld!"**. (結果、**"Hello, Underworld!"** と表示されます。)

## 6. Summary (まとめ)

**Remarks (注目するべきポイント)**
* Rubyist usually cascades simple methods an blocks in one line. (Rubyistは簡単な処理であればメソッドとブロックを横に繋げて一行で書くクセがあります。)
* This is possible becuase Ruby (これがRubyで実現しやすいのは)
 1. can apply a method and block to the return value (object) (メソッドやブロックの戻り値（オブジェクト）に対して再びメソッド（ブロック）を適用できる)
 2. implements methods and blocks as expected intuitively (メソッド（ブロック）の戻り値が直感的に対応するオブジェクトであるように実装されている)

. (から、です。)
* You should read the code 1) from left to right, and 2) from top to bottom. (コードを読むときの意識の流れとしては、1) 左から右、2) 上から下、です。)
* The long cascadings may kill you die due to a bug. (調子に乗ってカスケードを長くするとバグが入って死亡フラグが立ちます。)

**処理の流れ (おさらい)**

The original hello_underworld.rb (初期hello_underworld.rb)
```
File.write($0, "p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')")
puts `ruby #{$0}`
File.unlink $0
```

The overwritten hello_underworld.rb (実行時hello_underworld.rb)
```
p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')
```

This is executed by (これが)
```
puts `ruby #{$0}`
```

in a child process, and the result is shown in the main process, and the main process executes this (によってサブプロセスで実行されて、メインプロセスに結果が表示された後、メインプロセスで)
```
File.unlink $0
```

and the source file is deleted in the main process and the process is done. (が実行されて、ファイルが削除されて終了します。お疲れ様でした。)

P.S.
* It is totally meaningless, however, some typical Ruby tips are shown in this example. (全くもって無意味なコードで実用的ではありませんが、Rubyの心をわかりやすく散りばめらたつもりです。)
* I would be happy if you enjoyed the code. (楽しんでいただけたら幸いです。)
* Please do not hesitate to leave you comments in the issue. (もしご質問や誤字脱字や間違え、叱咤激励等ございましたらissueに書いていただけると幸いです。)

Thank you for reading. See you. (お疲れ様でした。)

*by Metaclass Eval*

