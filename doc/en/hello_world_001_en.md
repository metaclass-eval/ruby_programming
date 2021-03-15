

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

* <img src="../png/en.png" width="20"> [Only English](en/hello_world_001_en.md)
* <img src="../png/jp.png" width="20"> [日本語のページ](jp/hello_world_001_jp.md)

*It will take take **5** minutes to read this article*

----

## 1. First of all

Since the computer programming was born a long, long time ago, it has been a convension to show

```
Hello, World!
```

in the screen as an example when we introduce a programming language.

It is assumed that Ruby (interpreter) is installed in your computer in the following explanation. You do not have to anything in advance if you use macOS.

Tips
* [Why is it not good to use Windows to learn a programming language for the first time?

## 2. Start Terminal

* Start the terminal.
* Please click the magnifying glass icon at the top right, and type "**terminal**"

![terminal](https://github.com/metaclass-eval/ruby_programming/blob/master/png/terminal.png)

Then, you will see the terminal window (white in background as a default).

![terminal_default](https://github.com/metaclass-eval/ruby_programming/blob/master/png/terminal_default.png)

## 3. Make a source code

Please type the following command in the terminal

```
$ echo 'print "Hello, World!"' > hello_world.rb
```

Note
* You do not have to type **$**.
* The **$** is called *prompt* (shell prompt, command line prompt) which means that it is ready to run a command in Unix.
* **echo** is a Unix command to show text in a screen.
* The string after the **echo** with **''** (single quatation) will be shown in the next line after the command.
* **>** is a special symbol used in Unix, which switches the output into a file instead of showing the text in the next line.
* The output file will be generated, and the file is overwritten if the same file already exists.
* Please type **ls** if you want to check if the file is created.

```
$ ls
```

* You can see the file contents with **cat** command.

```
$ cat hello_world.rb
print "Hello, World!"
```

* Namely, **echo** command did 1) made a text file, and 2) wrote the text in the file.


* You can start the Finder by typing **open .**


```
$ open .
```

Now it is done making a Ruby source code.

Note
* It is convention to put **.rb** (extension) to the file name for a Ruby source code.
* The **hello_world.rb** contains only *text data*, so that you can open the file by using, e.g., MS Word or TextEdit (the default text editor in macOS.

## 4. Run

And please type as follows:

```
$ ruby hello_world.rb
```

Note
* Please do not type **$**, either.

If you can see in the screen

```
Hello, World!
```

, it scceeds. Congraturations!

## 5. Summary

In this tutorial

1. You made a Ruby source code by using **echo** Unix command
2. You ran the Ruby code and showed **Hello, World!** in the screen.
3. You used only one method (function) in Ruby, **print**. The **print** shows the text in the terminal.

![hello_world](https://github.com/metaclass-eval/ruby_programming/blob/master/png/hello_world.png)


Note
* Usually we make a source code (file) by using a text editor.
* In this tutorial, an way not to use a text editor for the simple example was shown.
* Plase do not confuse **echo** with **print**. **echo** is a Unix command, **print** is a method in Ruby.

Thank you for reading this tutorial.

P.S.
* Please do not hesitate to write down a comment or a question in the issue

*by Metaclass Eval*


