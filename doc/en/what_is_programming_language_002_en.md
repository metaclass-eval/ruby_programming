Contents
=================


1. [What is programming language? (Was ist eine Programmiersprache?) (プログラミング言語とは何か?)](#1-what-is-programming-language-was-ist-eine-programmiersprache-%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E8%A8%80%E8%AA%9E%E3%81%A8%E3%81%AF%E4%BD%95%E3%81%8B)
  1. [A set of commands (Ein Satz von Kommandos) (命令のセット)](#1-1-a-set-of-commands-ein-satz-von-kommandos-%E5%91%BD%E4%BB%A4%E3%81%AE%E3%82%BB%E3%83%83%E3%83%88)
  2. [Translation types (Übersetzungstypen) (翻訳の種類)](#1-2-translation-types-%C3%BCbersetzungstypen-%E7%BF%BB%E8%A8%B3%E3%81%AE%E7%A8%AE%E9%A1%9E)
  3. [Pros and Cons (Pro und Contra) (長所と短所)](#1-3-pros-and-cons-pro-und-contra-%E9%95%B7%E6%89%80%E3%81%A8%E7%9F%AD%E6%89%80)
2. [Summary: What is computer programing? (Zusammenfassung: Was ist Computerprogrammierung?) (まとめ: コンピュータプログラミングとは何か？)](#1-4-summary-what-is-computer-programing-zusammenfassung-was-ist-computerprogrammierung-%E3%81%BE%E3%81%A8%E3%82%81-%E3%82%B3%E3%83%B3%E3%83%94%E3%83%A5%E3%83%BC%E3%82%BF%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E3%81%A8%E3%81%AF%E4%BD%95%E3%81%8B)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc.go)

----

# 1. What is programming language?

## 1-1. A set of commands

* The programming langage is a set of commands to operate a computer.
* There are two types of command sets.

1. Machine code, low-level programming language
2. High-level programming language

![machine_code_source_code.png](../png/machine_code_source_code.png)

* Such a language as *C language*, *Python*, and *Ruby* is called **high-level programming language** which is functional and readable by human.
* On the other hand, **machine code** is a direct command set for CPU, Central Processing Unit, which is usually not readable by human, i.e. only 0 and 1 sequence.
* Normally, we need to translate/convert the high-level language into the machine code.
* It means, i.e. the learning of programming language means, that you should learn 1) how to write/read one of high-level programming languages as a source code and 2) how to translate/convert to the machine code from the source code.

## 1-2. Translation types

* There are two ways to convert from source code to machine code.

1. Compile
2. Interpret

FIG: image compiler, interpreter

* **Compile** means convering source code to machine code at once and the machine code will be normally executable, while **Interpret** means converting source code into machine code line by line with execution.
* Programming languages are classified by the way of translation.

1. Compiler language
2. Interpreter lanaguage

* This is the way of classification depending on the type of translation, rather than the language grammar.
* Famous compiler languages are, for example, C/C++, Fortran, Go, and so on.
* Famous interpreter languages are Python, Ruby, Perl, and so on.
* Interpreter language is also called **Script langauge**.
* However, there is an interpretor for C language and a compiler for Ruby.
* The rules or grammer of the language is called **language speciation**, while the actual code for the anguage translation is called **language implementation**.

FIG: language group

Note
* It is important to know which compiler or interpreter is the major or common translation type in a language thougth it is difficult to classify a language type clearly by the translation type.
* Because most of languages are usually design depending on the type of the translation.
* Compiler language usually defines the procedure or data structure in advance of execution, while interpreter language can change the procedure or data structure even during execution.
* For example, the compiler language such as C-language normally needs to define the data type of a variable such as integer or real number in advance of using it, which is called **variable declaration**, but generally in an interpretor language such as Ruby and Python the variable declaration is not required explicitly.

## 1-3. Pros and Cons

* There are Pros and Cons in each language translation type, Compiler/Interpreter language.

|                               | Compiler language (コンパイラ言語) | Interpreter language (インタープリタ言語) |
| ----------------------------- | ---------------------------------- | ----------------------------------------- |
| calculation speed (実行速度)  | fast (速い)                        | slow (遅い)                               |
| development speed (開発速度)  | slow (遅い)                        | high (速い)                               |
| learning cost (学習コスト)    | high (高い)                        | low (低い)                                |

* C言語のようなコンパイラ言語は実行速度は速い反面、言語としての機能が低いのでプログラミングにはインタープリタ言語に比べて処理手順が多くなる傾向があります。
* その為に覚えることも多く、学習コストが高くなる傾向があります。
* 逆に、インタープリタ言語（スクリプト言語）は機能が豊富でやりたいことを少ない手順で実現可能なことが多い代わりに、実行速度が低い、というデメリットがあります。
* プロトタイプとしてインタープリタ言語で実装して、実用化の段階でコンパイラ言語に切り替える、という使い方も十分あり得ます。
* プログラミング初学者はインタープリタ言語の一つをまず学んで、その後、分野や必要に応じてコンパイラ言語を学習されるのが良いでしょう。
* 各プログラミング言語にはそれぞれ向き不向き、得意不得意な分野がありますので、翻訳タイプだけで言語の良し悪しを判断することはできません。


# 2. Summary: What is computer programing?

* Programming language has two types of code, 1. source code and 2. machine code.
* We need to translate/convert the source code into the machine code, and there are two types of translation, 1. compile, and 2. interpret.
* Depending on the translation type, there are two types of language, 1. compiler language, and 2. interpreter language (script language).
* Ruby is an interpreter language, script lanaguage.
* Therefore, the execution speed is slower than a compiler language such as C language, but it is possible to change the procedure or data structure during the execution flexibly and there are a lot of functions for it, which is one of the special features in Ruby.

That's it for today. (Das war's für heute.) 以上。
