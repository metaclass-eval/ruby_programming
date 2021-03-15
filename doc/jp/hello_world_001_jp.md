

# Hello, World! in Ruby - the first Ruby programming - (はじめてのRubyプログラミング) [#001]

1. [First of all (はじめに)](#1-first-of-all-%E3%81%AF%E3%81%98%E3%82%81%E3%81%AB)
2. [Start Terminal (ターミナル起動)](#2-start-terminal-%E3%82%BF%E3%83%BC%E3%83%9F%E3%83%8A%E3%83%AB%E8%B5%B7%E5%8B%95)
3. [Make a source code (ソースコード作成)](#3-make-a-source-code-%E3%82%BD%E3%83%BC%E3%82%B9%E3%82%B3%E3%83%BC%E3%83%89%E4%BD%9C%E6%88%90)
4. [Run (実行)](#4-run-%E5%AE%9F%E8%A1%8C)
5. [Summary (まとめ)](#5-summary-%E3%81%BE%E3%81%A8%E3%82%81)

----

Youtube
* [[#001] Hello, World in Ruby (EN)](https://www.youtube.com/watch?v=-eNrtL38UKc)
* [[#001] Hello, World in Ruby (JP)](https://www.youtube.com/watch?v=nHY1uPXSCfU)

* <img src="png/en.png" width="20"> [Only English](https://github.com/metaclass-eval/ruby_programming/tree/master/doc/en/hello_world_001_en.md)
* <img src="png/jp.png" width="20"> [日本語のページ](https://github.com/metaclass-eval/ruby_programming/tree/master/doc/jp/hello_world_001_jp.md)

**このチュートリアルは約 **5** 分で終わります*

----

はじめに

コンピュータプログラミングが生まれた、いにしえの時代よりプログラミング言語を紹介するときには

```
Hello, World!
```

と画面に表示させる例題を紹介するという慣わしになっています。

以下、コンピュータにRuby（インタープリタ）がインストールされているという前提で説明をしていきいます。 (macOSを使っているならば前もってする作業は特にありません)

Tips
* なぜプログラミング言語を学ぶのにWindowsが適さないのか？)](https://github.com/metaclass-eval/ruby_programming/blob/master/doc/why_not_good_in_windows.md

ターミナル起動

* ターミナルを起動します。解説によってはConsole (コンソール) と呼んでいる人もいます、古い時代の名残です。
* macOSを使っているなら右上の虫眼鏡アイコンをクリックして、**terminal**とタイプしてください。

![terminal](https://github.com/metaclass-eval/ruby_programming/blob/master/png/terminal.png)

これで以下のようなターミナルウィンドウが表示されたと思います。デフォルトでは白背景のターミナルが表示されます。

![terminal_default](https://github.com/metaclass-eval/ruby_programming/blob/master/png/terminal_default.png)

ソースコード作成

次のコマンドをタイプしてください。

```
$ echo 'print "Hello, World!"' > hello_world.rb
```

Note
* 最初の「$」 (ドル記号) はタイプする必要はありません。
* この **$** はUnixで主に使われるプロンプト（コマンド入力待機状態）を表す記号です。
* **echo** は画面に文字列を表示するUnixコマンドです。
* **echo** 以後、**''** (シングルクォーテーション) で囲まれた文字列を次の行に表示します。
* **>** はUnixで使われる特殊文字の一つで、出力される文字列を画面（次の行ではなく）指定したファイルに保存します。
* もしファイルが存在しなければ新規に作成され、すでに存在している場合は上書きされます。
* ファイルが作成されたかどうかを確認するには **ls** とコマンドをタイプします。

```
$ ls
```

* **cat**コマンドを使うことでファイルの中身を確認することができます。

```
$ cat hello_world.rb
print "Hello, World!"
```

* **echo** コマンドは実際にはファイルを作成して、ファイルに文字列を書き出した、ということになります。


* macOSを使っているなら、**open .** とタイプすることでFinderを起動することができます (最後のドット「.」もちゃんと意味があるので忘れないでください) (openとドット「.」の間にはスペースが必要です)。


```
$ open .
```

これで、Rubyプログラミングコード (ソースコード) が完成しました。

ご注意
* Rubyのソースコードのファイルは *.rb* と拡張子をつける慣わしになっています (.rbになっていなくても問題なく動きます)。
* **hello_world.rb** は *テキストデータ* (文字列だけのデータ) になるので、MS WordやmacOS標準のTextEditでも開く (見る) ことができます。

実行

続けて、次のようにタイプ (コマンドを入力) してください。

```
$ ruby hello_world.rb
```

ご注意
* 前回と同様に最初の **$** は入力しないでください。

Rubyプログラミングコードが実行され画面に

```
Hello, World!
```

と表示されれば成功です。おめでとう!

まとめ

このチュートリアルでは

1echoコマンドを使ってRubyソースコードを作成しました。
2作ったソースコードを実行して **Hello, World!** と画面に表示しました。
3ここではRubyで用意されている **print** と呼ばれる命令 (メソッドと言います) を使いました。**print**はターミナル画面に文字列を表示する、という命令 (メソッド)です。

![hello_world](https://github.com/metaclass-eval/ruby_programming/blob/master/png/hello_world.png)


補足
* 通常は何らかのテキストエディタを用いてソースコードを作成します。
* 今回は簡単な紹介のためにテキストエディタを使わない方法を紹介しました。
* **echo**と**print**を混同しないように注意してください。**echo**はUnixコマンドで、**print**はRubyのメソッドです。

お疲れ様でした。

P.S.
* 質問等があればissueに遠慮なくお書きください。

*by Metaclass Eval*


