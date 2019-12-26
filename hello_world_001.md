Contents
=================

TOC

# 1. Hello, World! in Ruby - the first Ruby code - (はじめの一歩)

コンピュータプログラミングが生まれた、いにしえの時代よりプログラミング言語を紹介するときには

```
Hello, World!
```

と画面に表示させる例題を紹介するという慣わしになっています。

以下、コンピュータにRuby（インタープリタ）がインストールされているという前提で説明をしていきいます (macOSを使っているならば特に前もってする作業はありません)。

## 1.1. Start Terminal (ターミナル起動)

* ターミナルを起動します (解説によってはConsoleと読んでいる人もいます、古い時代の名残です)
* macOSを使っているなら右上の虫眼鏡アイコンをクリックして、**terminal**とタイプしてください。

![terminal](https://github.com/metaclass-eval/ruby_programming/blob/master/png/terminal.png)

## 1.2. Make a source code (ソースコード作成)

次のコマンドをタイプしてください。

```
$ echo 'print "Hello, World!"' > hello_world.rb
```

Note
* 最初の「$」 (ドル記号) はタイプする必要はありません。
* この **$** はUnixで主に使われるプロンプト（コマンド入力待機状態）を表す記号です。
* echoは画面に文字列を表示するUnixコマンドです。
* echo以後、**""** (ダブルクォーテーション) で囲まれた文字列を次の行に表示します。
* **>** はUnixで使われる特殊文字の一つで、出力される文字列を画面（次の行ではなく）指定したファイルに保存します。
* もしファイルが存在しなければ新規に作成され、すでに存在している場合は上書きされます。
* ファイルが作成されたかどうかを確認するには **ls** とコマンドをタイプします。

```
$ ls
```

* macOSを使っているなら、**open .** とタイプすることでFinderを起動することができます (最後のドット「.」もちゃんと意味があるので忘れないでください) (openとドット「.」の間にはスペースが必要です)。

```
$ open .
```

これで、Rubyプログラミングコード (ソースコード) が完成しました。

Note
* 習慣として、Rubyのソースコードは *.rb* と拡張子をつける慣わしになっています。
* hello_world.rbは*テキストデータ*になるので、MS WordやmacOS標準のTextEditでも開く (見る) ことができます。

## 1.3. Run (実行)

続けて、次のようにタイプ (コマンドを入力) してください。

```
$ ruby hello_world.rb
```

Note
* 前回と同様に最初の **$** は入力しないでください。

Rubyプログラミングコードが実行され画面に

```
Hello, World!
```

と表示されれば成功です。Congraturations!

# 2. Summary (まとめ)

このチュートリアルでは

1. echoコマンドを使ってRubyソースコードを作成しました。
2. 作ったソースコードを実行して **Hello, World!** と画面に表示しました。

![terminal](https://github.com/metaclass-eval/ruby_programming/blob/master/png/terminal.png)


お疲れ様でした。

P.S.
* 質問等や間違いなどissueに遠慮なくお書きください。

*by Metaclass Eval*

