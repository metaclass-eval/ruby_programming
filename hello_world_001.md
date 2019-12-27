

# Hello, World! in Ruby - the first Ruby code - (はじめの一歩) [#001]

* [1\. First of all (はじめに)](#1-first-of-all-%E3%81%AF%E3%81%98%E3%82%81%E3%81%AB)
* [2\. Start Terminal (ターミナル起動)](#2-start-terminal-%E3%82%BF%E3%83%BC%E3%83%9F%E3%83%8A%E3%83%AB%E8%B5%B7%E5%8B%95)
* [3\. Make a source code (ソースコード作成)](#3-make-a-source-code-%E3%82%BD%E3%83%BC%E3%82%B9%E3%82%B3%E3%83%BC%E3%83%89%E4%BD%9C%E6%88%90)
* [4\. Run (実行)](#4-run-%E5%AE%9F%E8%A1%8C)
* [5\. Summary (まとめ)](#5-summary-%E3%81%BE%E3%81%A8%E3%82%81)

*このチュートリアルは約 **5** 分で終わります*

----

## 1. First of all (はじめに)

Since the computer programming was born a long, long time ago, it has been a convension to show (コンピュータプログラミングが生まれた、いにしえの時代よりプログラミング言語を紹介するときには)

```
Hello, World!
```

in the screen as an example when we introduce a programming language. (と画面に表示させる例題を紹介するという慣わしになっています。)

It is assumed that Ruby (interpreter) is installed in your computer in the following explanation. You do not have to anything in advance if you use macOS. (以下、コンピュータにRuby（インタープリタ）がインストールされているという前提で説明をしていきいます。 (macOSを使っているならば前もってする作業は特にありません))

Tips
* [Why is it not good to use Windows to learn a programming language for the first time? (なぜプログラミング言語を学ぶのにWindowsが適さないのか？)](https://github.com/metaclass-eval/ruby_programming/blob/master/why_not_good_in_windows.md)

## 2. Start Terminal (ターミナル起動)

* Start the terminal. (ターミナルを起動します。解説によってはConsole (コンソール) と呼んでいる人もいます、古い時代の名残です。)
* Please click the magnifying glass icon at the top right, and type **terminal** (macOSを使っているなら右上の虫眼鏡アイコンをクリックして、**terminal**とタイプしてください。)

![terminal](https://github.com/metaclass-eval/ruby_programming/blob/master/png/terminal.png)

## 3. Make a source code (ソースコード作成)

Please type the following command in the terminal (次のコマンドをタイプしてください。)

```
$ echo 'print "Hello, World!"' > hello_world.rb
```

Note
* You do not have to type **$**. (最初の「$」 (ドル記号) はタイプする必要はありません。)
* The **$** is called *prompt* (shell prompt, command line prompt) which means that it is ready to run a command in Unix. (この **$** はUnixで主に使われるプロンプト（コマンド入力待機状態）を表す記号です。)
* **echo** is a Unix command to show text in a screen. (**echo** は画面に文字列を表示するUnixコマンドです。)
* The **""** (double quatation) will be shown in the next line after the command. (**echo** 以後、**""** (ダブルクォーテーション) で囲まれた文字列を次の行に表示します。)
* **>** is a special symbol used in Unix, which switch the output into a file instead of showing the text in the screen. (**>** はUnixで使われる特殊文字の一つで、出力される文字列を画面（次の行ではなく）指定したファイルに保存します。)
* The output file will be generated, and overwritten if the same file already exists. (もしファイルが存在しなければ新規に作成され、すでに存在している場合は上書きされます。)
* Please type **ls** if you want to check if the file is created. (ファイルが作成されたかどうかを確認するには **ls** とコマンドをタイプします。)

```
$ ls
```

* You can start the Finder by typing **open .**. (macOSを使っているなら、**open .** とタイプすることでFinderを起動することができます (最後のドット「.」もちゃんと意味があるので忘れないでください) (openとドット「.」の間にはスペースが必要です)。)

```
$ open .
```

Now it is done to make a Ruby source code. (これで、Rubyプログラミングコード (ソースコード) が完成しました。)

Note (ご注意)
* It is convention to put **.rb** (extension) to the file name for a Ruby source code. (Rubyのソースコードは *.rb* と拡張子をつける慣わしになっています (.rbになっていなくても問題なく動きます)。)
* The **hello_world.rb** contains only *text data*, so that you can open the file by, e.g., MS Word or TextEdit (the default text editor in macOS. (**hello_world.rb** は *テキストデータ* (文字列だけのデータ) になるので、MS WordやmacOS標準のTextEditでも開く (見る) ことができます。)

## 4. Run (実行)

And please type as follows: (続けて、次のようにタイプ (コマンドを入力) してください。)

```
$ ruby hello_world.rb
```

Note (ご注意)
* Please do not type **$**. (前回と同様に最初の **$** は入力しないでください。)

If you can see in the screen (Rubyプログラミングコードが実行され画面に)

```
Hello, World!
```

, it scceeds. Congraturations! (と表示されれば成功です。おめでとう!)

## 5. Summary (まとめ)

In this tutorial (このチュートリアルでは)

1. You made a Ruby source code by using echo Unix command (echoコマンドを使ってRubyソースコードを作成しました。)
2. You ran the Ruby code and showed **Hello, World!** in the screen. (作ったソースコードを実行して **Hello, World!** と画面に表示しました。)

![hello_world](https://github.com/metaclass-eval/ruby_programming/blob/master/png/hello_world.png)


Thank you for reading this tutorial. (お疲れ様でした。)

P.S.
* Please do not hesitate to write down a comment or a question in the issue (質問等があればissueに遠慮なくお書きください。)

*by Metaclass Eval*


