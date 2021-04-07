Contents
=================


1. [What is programming language? (Was ist eine Programmiersprache?) (プログラミング言語とは何か?)](#1-what-is-programming-language-was-ist-eine-programmiersprache-%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E8%A8%80%E8%AA%9E%E3%81%A8%E3%81%AF%E4%BD%95%E3%81%8B)
  1. [A set of commands (Ein Satz von Kommandos) (命令のセット)](#1-1-a-set-of-commands-ein-satz-von-kommandos-%E5%91%BD%E4%BB%A4%E3%81%AE%E3%82%BB%E3%83%83%E3%83%88)
  2. [Translation types (Übersetzungstypen) (翻訳の種類)](#1-2-translation-types-%C3%BCbersetzungstypen-%E7%BF%BB%E8%A8%B3%E3%81%AE%E7%A8%AE%E9%A1%9E)
  3. [Pros and Cons (Pro und Contra) (長所と短所)](#1-3-pros-and-cons-pro-und-contra-%E9%95%B7%E6%89%80%E3%81%A8%E7%9F%AD%E6%89%80)
2. [Summary: What is computer programing? (Zusammenfassung: Was ist Computerprogrammierung?) (まとめ: コンピュータプログラミングとは何か？)](#1-4-summary-what-is-computer-programing-zusammenfassung-was-ist-computerprogrammierung-%E3%81%BE%E3%81%A8%E3%82%81-%E3%82%B3%E3%83%B3%E3%83%94%E3%83%A5%E3%83%BC%E3%82%BF%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E3%81%A8%E3%81%AF%E4%BD%95%E3%81%8B)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc.go)

----

# 1. What is programming language? (Was ist eine Programmiersprache?) (プログラミング言語とは何か?)

## 1-1. A set of commands (Ein Satz von Kommandos) (命令のセット)

* The programming langage is a set of commands to operate a computer. (Die Programmiersprache ist ein Satz von Kommandos zur Bedienung eines Computers.) (プログラミング言語とは、コンピュータを動かすための命令の集まり、です。)
* There are two types of command sets. (Es gibt zwei Arten von Kommandosätzen.) (この命令の集まりには、二種類あります。)

1. Machine code, low-level programming language (Maschinencode, Maschinensprache) (機械語、低水準言語)
2. High-level programming language (Höhere Programmiersprache) (高級言語、高水準言語)

[FIG]: image set of commands, human bou + computer, 0/1, language

* Such a language as C language, Python, and Ruby is called **high-level programming language** which is functional and readable by human. () (C言語、Python、Rubyといった言語は高級言語と呼ばれていて、通常は人間が理解できる言語体系をしています（ほとんどの高水準のプログラミング言語は英語を元にした命令語になっています。)
* On the other hand, **machine language (code)** is a direct command set for CPU (Central Processing Unit), which is usually non readable by human, i.e. only 0 and 1 sequence. () (これに対して機械語はCPU中央演算処理装置に一対一対応する命令セットでその命令語を直接人間が理解するのは大変困難です。)
* Normally, we need to translate (convert) the high-level language code into the machine language code. () (そのため、通常は高級言語でプログラミングコードを書き、機械語に翻訳（変換）する作業が伴います。)
* It would mean, i.e. the learning of programming language means, that you should learn 1) how to write/read one of high-level programming languages as a source code and 2) how to translate/convert to the machine code from the source code. () (「プログラミング言語を学ぶ」ということは、1) 高級言語の書き方を覚え、ソースコードとして保存し、2) そのソースコードを機械語に翻訳（変換）する方法を学ぶ、ということになります。)

## 1-2. Translation types (Übersetzungstypen) (翻訳の種類)

* There are two ways to convert from source code to machine code. () (ソースコードから機械語に変換する方法が二通りあります。)

1. Compile (Kompilieren) (コンパイル)
2. Interpret (Interpretieren) (インタープリット)

FIG: image compiler, interpreter

* *Compile* means convering source code to machine code at once and machine code will be normally executable, while *Interpret* means converting source code into machine code line by line with execution. () (コンパイルとはソースコードを機械語に一括して変換することで、一旦全てのコードを機械語に変換してから実行されるのに対し、インタープリットとはソースコードの命令を一つ一つ機械語に変換することで、機械語に変換しながら実行します。)
* Programming languages are classified by the way of translation. () (この翻訳の仕方によって、プログラミング言語は大きく二つに分類されます。)

1. Compiler language (Compilersprache) (コンパイラ言語)
2. Interpreter lanaguage (Interpretersprache) (インタープリタ言語)

* This is the way of classification depending on the type of translation, rather than the language itself. () (これは言語そのものの特徴というよりは、言語の翻訳の仕方による分類になります。)
* Famous compiler languages are, for example, C/C++, Fortran, Go, and so on. () (コンパイラ言語として代表的なものは、C/C++、Fortran、Go言語など。)
* Famous interpreter languages are Python, Ruby, Perl, and so on. () (インタープリタ言語として有名なのは、Python、Perl、Ruby、などです。)
* However, there is an interpretor for C language and a compiler for Ruby. () (ただし、C言語のインタプリタやRuby言語のコンパイラも存在します。)
* The rules or grammer of the language is called *language speciation*, while the actual code for the language translation is called *language implementation*. () (どのような文法規則や命令があるかといった言語の仕様に対して、これら翻訳をする実際のプログラムのことを言語の実装と呼びます。)

FIG: language group

* このように、C言語用のインタープリタやRuby用のコンパイラなども開発されているので、ソースコードから機械語に変換する方法で言語を完全に分けることはできませんが、その言語が標準でどちらを採用しているか、あるいは広く利用されているか、を知っておくことは大事です。
* なぜなら、コンパイラは事前にプログラミング手順やデータ構造が固定されていることが前提となりますが、インタープリタではプログラミング実行中にプログラミング手順を変更するといったことが可能であり、この性質を利用した言語仕様が規定されている場合があるからです。
* 例えば、コンパイラ言語のC言語では予めデータの性質、例えば、整数であるとか実数であるとか、そういったデータ型が定義されている必要がありますが、インタープリタ言語であるPythonやRubyなどはこういったデータ型の指定を予めしておく必要がありません。

## 1-3. Pros and Cons (Pro und Contra) (長所と短所)

* コンパイラ言語とインタープリタ言語でそれぞれ長所と短所があります。

TD

* ちなみに、Java言語は、コンパイラとインタープリタの両方を採用しており、コンパイルをしてソースコードと機械語の中間の「バイトコード」を生成し、インタープリタによってバイトコードが機械語に翻訳されて実行されます。
* この「バイトコード」は人間が直接理解することは難しいですが、OSを問わず利用可能であるという点で、インタープリタ言語に似た性質を持ち、ソースコードから機械語に翻訳しながら実行するより高速であるというコンパイラ言語に近い特徴も併せ持っています。
* そのため、インタープリタ言語よりは高速であるけれども、コンパイラ言語よりは遅く、コンパイラの手順が必要だけれども、バイトコードであれば、どのOSでも同様に実行可能である、というインタープリタ言語とコンパイラ言語の中間の性質を持ちます。


# 2. Summary: What is computer programing? (Zusammenfassung: Was ist Computerprogrammierung?) (まとめ: コンピュータプログラミングとは何か？)

* 以上をまとめますと、プログラミング言語、とは...

TD
