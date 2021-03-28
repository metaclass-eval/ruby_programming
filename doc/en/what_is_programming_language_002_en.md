Contents
=================


1. [What is programming language? (プログラミング言語とは何か?)](#1-what-is-programming-language-%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E8%A8%80%E8%AA%9E%E3%81%A8%E3%81%AF%E4%BD%95%E3%81%8B)
  1-1. [A set of commands (命令のセット)](#1-1-a-set-of-commands-%E5%91%BD%E4%BB%A4%E3%81%AE%E3%82%BB%E3%83%83%E3%83%88)
  1-2. [Translation types](#1-2-translation-types)
  1-3. [Pros and Cons (長所と短所)](#1-3-pros-and-cons-%E9%95%B7%E6%89%80%E3%81%A8%E7%9F%AD%E6%89%80)
  1-4. [What is computer programing?](#1-4-what-is-computer-programing)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc.go)

----

# 1. What is programming language?

## 1-1. A set of commands

* The programming langage is a set of commands to operate a computer.
* There are two types of command sets.

1. Machine language
2. High-level programming language

FIG: image set of commands, human bou + computer, 0/1, language

* Such a language as C language, Python, and Ruby is called **high-level programming language** which is functional and readable by human.
* On the other hand, **machine language (code)** is a direct command set for CPU (Central Processing Unit), which is usually non readable by human, i.e. only 0 and 1 sequence.
* Normally, we need to translate (convert) the high-level language code into the machine language code.
* It would mean, i.e. the learning of programming language means, that you should learn 1) how to write/read one of high-level programming languages as a source code and 2) how to translate (convert) to the machine code from the source code.

## 1-2. Translation types

* There are two ways to convert from source code to machine code.

1. Compile
2. Interpret

FIG: image compiler, interpreter

* *Compile* means convering source code to machine code at once and machine code will be normally executable, while *Interpret* means converting source code into machine code line by line with execution.
* Programming languages are classified by the way of translation.

1. Compiler language
2. Interpreter lanaguage

* This is the way of classification depending on the type of translation, rather than the language itself.
* Famous compiler languages are, for example, C/C++, Fortran, Go, and so on.
* Famous interpreter languages are Python, Ruby, Perl, and so on.
* However, there is an interpretor for C language and a compiler for Ruby.
* The rules or grammer of the language is called *language speciation*, while the actual code for the language translation is called *language implementation*. 

FIG: language group

* このように、C言語用のインタープリタやRuby用のコンパイラなども開発されているので、ソースコードから機械語に変換する方法で言語を完全に分けることはできませんが、その言語が標準でどちらを採用しているか、あるいは広く利用されているか、を知っておくことは大事です。
* なぜなら、コンパイラは事前にプログラミング手順やデータ構造が固定されていることが前提となりますが、インタープリタではプログラミング実行中にプログラミング手順を変更するといったことが可能であり、この性質を利用した言語仕様が規定されている場合があるからです。
* 例えば、コンパイラ言語のC言語では予めデータの性質、例えば、整数であるとか実数であるとか、そういったデータ型が定義されている必要がありますが、インタープリタ言語であるPythonやRubyなどはこういったデータ型の指定を予めしておく必要がありません。

## 1-3. Pros and Cons

* コンパイラ言語とインタープリタ言語でそれぞれ長所と短所があります。

TD

* ちなみに、Java言語は、コンパイラとインタープリタの両方を採用しており、コンパイルをしてソースコードと機械語の中間の「バイトコード」を生成し、インタープリタによってバイトコードが機械語に翻訳されて実行されます。
* この「バイトコード」は人間が直接理解することは難しいですが、OSを問わず利用可能であるという点で、インタープリタ言語に似た性質を持ち、ソースコードから機械語に翻訳しながら実行するより高速であるというコンパイラ言語に近い特徴も併せ持っています。
* そのため、インタープリタ言語よりは高速であるけれども、コンパイラ言語よりは遅く、コンパイラの手順が必要だけれども、バイトコードであれば、どのOSでも同様に実行可能である、というインタープリタ言語とコンパイラ言語の中間の性質を持ちます。


## 1-4. Summary: What is computer programing?

* 以上をまとめますと、プログラミング言語、とは...

TD
