Contents
=================

TOC

# 1. What is programming language? (プログラミング言語とは何か?)

## 1-1. A set of commands (命令のセット)

* The programming langage is a set of commands to operate a computer. (プログラミング言語とは、コンピュータを動かすための命令の集まり、です。)
* There are two types of command sets. (この命令の集まりには、二種類あります。)

1. Machine language (機械語), low-level programming language (低水準言語)
2. High-level programming language (高級言語、高水準言語)

FIG: image set of commands, human bou + computer, 0/1, language

* Such language as C language, Python, and Ruby is called high-level programming language which is functional and readable by human. (C言語、Python、Rubyといった言語は高級言語であり、通常は人間が理解できる言語体系をしています（ほとんどの高水準のプログラミング言語は英語を元にした命令語になっています。)
* On the other hand, low-level programming language (code) is a direct command set for CPU (Central Processing Unit), which is usually non human readable, i.e. 0 and 1 sequence. (これに対して低水準言語はCPU中央演算処理装置に一対一対応する命令セットでその命令語を直接人間が理解するのは大変困難です。)
* Normally, we need to translate (convert) the high-level language code into the low-level language code. (そのため、通常は高級言語でプログラミングコードを書き、機械語に翻訳（変換）する作業が伴います。)
* It means that the learning of programming language to learn 1) how to write/read one of high-level programming languages as a source code and 2) how to translate (convert) to the machine code from the source code. (「プログラミング言語を学ぶ」ということは、1) 高級言語の書き方を覚え、ソースコードとして保存し、2) そのソースコードを機械語に翻訳（変換）する方法を学ぶ、ということになります。)

## 1-2. Translation types

* There are two ways to convert from source code to machine code. (ソースコードから機械語に翻訳する方法が二通りあります。)

1. Compile (コンパイル)
2. Interpret (インタープリット)

FIG: image compiler, interpreter

* *Compile* means convering source code to machine code at once and machine code will be normally executable, while *Interpret* means converting source code into machine code line by line with execution. (コンパイラはソースコードを機械語に一括して翻訳してそれから実行されますが、インタープリタは命令を一つ一つ機械語に翻訳しながら実行します。)
* Programming languages are classified by that way of translation. (この翻訳の仕方によって、プログラミング言語は大きく二つに分類されます。)

1. Compiler language (コンパイラ言語)
2. Interpreter lanaguage (インタープリタ言語)

* これは言語そのものの特徴というよりは、言語の翻訳の仕方による分類になります。
* コンパイラ言語として代表的なものは、C/C++、Fortran、など。
* インタープリタ言語として有名なのは、Python、Perl、Ruby、などです。

FIG: language group

* ただし、C言語用のインタープリタやRuby用のコンパイラなども開発されているので、完全に分けることはできませんが、その言語が標準でどちらを採用しているか、あるいは広く利用されているか、を知っておくことは大事です。
* なぜなら、コンパイラは事前にプログラミング手順やデータ構造が固定されていることが前提となりますが、インタープリタではプログラミング実行中にプログラミング手順を変更するといったことが可能であり、この性質を利用した言語仕様が規定されている場合があるからです。
* 例えば、コンパイラ言語のC言語では予めデータの性質、例えば、整数であるとか実数であるとか、そういったデータ型が定義されている必要がありますが、インタープリタ言語であるPythonやRubyなどはこういったデータ型の指定を予めしておく必要がありません。

## 1-3. Pros and Cons (長所と短所)

* コンパイラ言語とインタープリタ言語でそれぞれ長所と短所があります。

TD

* ちなみに、Java言語は、コンパイラとインタープリタの両方を採用しており、コンパイルをしてソースコードと機械語の中間の「バイトコード」を生成し、インタープリタによってバイトコードが機械語に翻訳されて実行されます。
* この「バイトコード」は人間が直接理解することは難しいですが、OSを問わず利用可能であるという点で、インタープリタ言語に似た性質を持ち、ソースコードから機械語に翻訳しながら実行するより高速であるというコンパイラ言語に近い特徴も併せ持っています。
* そのため、インタープリタ言語よりは高速であるけれども、コンパイラ言語よりは遅く、コンパイラの手順が必要だけれども、バイトコードであれば、どのOSでも同様に実行可能である、というインタープリタ言語とコンパイラ言語の中間の性質を持ちます。


## 1-4. What is computer programing?

* 以上をまとめますと、プログラミング言語、とは...

TD
