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

FIG: image set of commands, human bou + computer, 0/1, language

* Such a language as C language, Python, and Ruby is called **high-level programming language** which is functional and readable by human. (Eine solche Sprache wie C, Python und Ruby wird als **Hochsprache** bezeichnet, die funktional und für den Menschen lesbar ist.) (C言語、Python、Rubyといった言語は**高級言語**と呼ばれていて、通常は人間が理解できる言語体系をしています（ほとんどの高水準のプログラミング言語は英語を元にした命令語になっています）)
* On the other hand, **machine code** is a direct command set for CPU, Central Processing Unit, which is usually not readable by human, i.e. only 0 and 1 sequence. (Auf der anderen Seite ist **Maschinencode** ein direkter Befehlssatz für die CPU, Central Processing Unit, der in der Regel für den Menschen nicht lesbar ist, d.h. nur 0- und 1-Sequenz.) (これに対して**機械語**はCPU（中央演算処理装置）に一対一対応する命令セットでその命令語を直接人間が理解するのは大変困難です。)
* Normally, we need to translate/convert the high-level language into the machine code. (Normalerweise müssen wir die Hochsprache in den Maschinencode übersetzen/umwandeln.) (そのため、通常は高級言語でプログラミングコードを書き、機械語に翻訳（変換）する作業が伴います。)
* It means, i.e. the learning of programming language means, that you should learn 1) how to write/read one of high-level programming languages as a source code and 2) how to translate/convert to the machine code from the source code. (Es bedeutet, d.h. das Erlernen einer Programmiersprache bedeutet, dass Sie 1) lernen sollten, wie man eine der höheren Programmiersprachen als Sourcecode schreibt/liest und 2) wie man aus dem Sourcecode in den Maschinencode übersetzt/konvertiert.) (「プログラミング言語を学ぶ」ということは、1) 高級言語の書き方を覚え、2) そのソースコードを機械語に翻訳（変換）する方法を学ぶ、ということになります。)

## 1-2. Translation types (Übersetzungstypen) (翻訳の種類)

* There are two ways to convert from source code to machine code. (Es gibt zwei Möglichkeiten, von Sourcecode in Maschinencode zu konvertieren.) (ソースコードから機械語に変換する方法が二通りあります。)

1. Compile (Kompilieren) (コンパイル)
2. Interpret (Interpretieren) (インタープリット)

FIG: image compiler, interpreter

* **Compile** means convering source code to machine code at once and the machine code will be normally executable, while **Interpret** means converting source code into machine code line by line with execution. (**Kompilieren** bedeutet, dass der Sourcecode auf einmal in Maschinencode umgewandelt wird und der Maschinencode normalerweise ausführbar ist, während **Interpretieren** bedeutet, dass der Sourcecode zeilenweise in Maschinencode umgewandelt wird und ausgeführt wird.) (**コンパイル**とはソースコードを機械語に一括して変換することで、一旦全てのコードを機械語に変換してから実行されるのに対し、**インタープリット**とはソースコードの命令を一つ一つ機械語に変換することで、機械語に変換しながら実行します。)
* Programming languages are classified by the way of translation. (Programmiersprachen werden nach der Art der Übersetzung klassifiziert.) (この翻訳の仕方によって、プログラミング言語は大きく二つに分類されます。)

1. Compiler language (Compilersprache) (コンパイラ言語)
2. Interpreter lanaguage (Interpretersprache) (インタープリタ言語)

* This is the way of classification depending on the type of translation, rather than the language grammar. (Diese Art der Klassifizierung hängt von der Art der Übersetzung und nicht von der Sprachgrammatik ab.) (これは言語文法や言語そのものの特徴というよりは、言語の翻訳の仕方による分類になります。)
* Famous compiler languages are, for example, C/C++, Fortran, Go, and so on. (Bekannte Compilersprachen sind zum Beispiel C/C++, Fortran, Go und so weiter.) (コンパイラ言語として代表的なものは、C/C++、Fortran、Go言語など。)
* Famous interpreter languages are Python, Ruby, Perl, and so on. (Bekannte Interpretersprachen sind Python, Ruby, Perl usw.) (インタープリタ言語として有名なのは、Python、Perl、Ruby、などです。)
* Interpreter language is also called **Script langauge**. (Die Interpretersprache wird auch **Skriptsprache** genannt.) (インタープリタ言語は**スクリプト言語**とも呼ばれます。)
* However, there is an interpretor for C language and a compiler for Ruby. (Es gibt jedoch einen Interpreter für die Sprache C und einen Compiler für Ruby.) (ただし、C言語のインタプリタやRuby言語のコンパイラも存在します。)
* The rules or grammer of the language is called **language speciation**, while the actual code for the anguage translation is called **language implementation**. (Die Regeln oder Grammatik der Sprache wird **Sprachenspezifikation** genannt, während der eigentliche Code für die Sprachübersetzung **Sprachimplementierung** genannt wird.) (どのような文法規則や命令があるかといった**言語の仕様**に対して、これら翻訳をする実際のプログラムのことを**言語の実装**と呼びます。)

FIG: language group

Note
* It is important to know which compiler or interpreter is the major or common translation type in a language thougth it is difficult to classify a language type clearly by the translation type. (Es ist wichtig zu wissen, welcher Compiler oder Interpreter der Haupt- oder gängige Übersetzungstyp in einer Sprache ist, obwohl es schwierig ist, einen Sprachtyp anhand des Übersetzungstyps eindeutig zu klassifizieren.) (このように、C言語用のインタープリタやRuby用のコンパイラなども開発されているので、ソースコードから機械語に変換する方法で言語を完全に分けることはできませんが、その言語が標準でどちらを採用しているか、あるいは広く利用されているか、を知っておくことは大事です。)
* Because most of languages are usually design depending on the type of the translation. (Denn die meisten Sprachen sind in der Regel abhängig von der Art der Übersetzung gestaltet.) (なぜなら、翻訳のタイプによって言語仕様が設計されることが多いからです。)
* Compiler language usually defines the procedure or data structure in advance of execution, while interpreter language can change the procedure or data structure even during execution. (Die Compiler-Sprache definiert die Prozedur oder Datenstruktur in der Regel im Vorfeld der Ausführung, während die Interpreter-Sprache die Prozedur oder Datenstruktur auch während der Ausführung ändern kann.) (コンパイラは事前にプログラミング手順やデータ構造が固定されていることが前提となりますが、インタープリタではプログラミング実行中にプログラミング手順を変更するといったことが可能であり、この性質を利用した言語仕様が規定されている場合があるからです。)
* For example, the compiler language such as C-language normally needs to define the data type of a variable such as integer or real number in advance of using it, which is called **variable declaration**, but generally in an interpretor language such as Ruby and Python the variable declaration is not required explicitly. (So muss in einer Compiler-Sprache wie C normalerweise der Datentyp einer Variablen wie Integer oder Realzahl vor ihrer Verwendung definiert werden, was als **Variablendeklaration** bezeichnet wird, aber in einer Interpretator-Sprache wie Ruby und Python ist die Variablendeklaration im Allgemeinen nicht ausdrücklich erforderlich.) (コンパイラ言語のC言語では予めデータの性質、例えば、整数であるとか実数であるとか、そういったデータ型が定義されている必要がありますが、インタープリタ言語であるPythonやRubyなどはこういったデータ型の指定を予めしておく必要がありません。)

## 1-3. Pros and Cons (Pro und Contra) (長所と短所)

* There are Pros and Cons in each language translation type, Compiler/Interpreter language. (Für jede Art der Sprachübersetzung, Compiler/Interpreter-Sprache, gibt es Pro und Kontra.) (コンパイラ言語とインタープリタ言語でそれぞれ長所と短所があります。)

|                               | Compiler language (コンパイラ言語) | Interpreter language (インタープリタ言語) |
| ----------------------------- | ---------------------------------- | ----------------------------------------- |
| calculation speed (実行速度)  | fast (速い)                        | slow (遅い)                               |
| development speed (開発速度)  | slow (遅い)                        | high (速い)                               |
| learning cost (学習コスト)    | high (高い)                        | low (低い)                                |

* C言語のようなコンパイラ言語は実行速度は速い反面、言語としての機能が低いのでプログラミングにはインタープリタ言語に比べて処理手順が多くなる傾向があります。
* その為に覚えることも多く、学習コストが高くなる傾向があります。
* 逆に、インタープリタ言語（スクリプト言語）は機能が豊富でやりたいことを少ない手順で実現可能なことが多い代わりに、実行速度が低い、というデメリットがあります。
* プロトタイプとしてインタープリタ言語で実装して、実用化の段階でコンパイラ言語に切り替える、という使い方も十分あり得ます。
* プログラミング書学者はインタープリタ言語をまず学んで、その後、分野や必要に応じてコンパイラ言語を習得されるのが良いでしょう。
* 各プログラミング言語にはそれぞれ向き不向き、得意不得意な分野がありますので、必ずしも実行速度がインタープリタ言語だから、コンパイラ言語だから、という基準で判断できないことも多いです。


# 2. Summary: What is computer programing? (Zusammenfassung: Was ist Computerprogrammierung?) (まとめ: コンピュータプログラミングとは何か？)

* Programming language has two types of code, 1. source code and 2. machine code. (Eine Programmiersprache hat zwei Arten von Code, 1. den Sourcecode und 2. den Maschinencode.) (以上をまとめますと、プログラミング言語、とは、1.ソースコードと、2.機械語の二種類があります。)
* We need to translate/convert the source code into the machine code, and there are two types of translation, 1. compile, and 2. interpret. (Wir müssen den Sourcecode in den Maschinencode übersetzen/umwandeln, und es gibt zwei Arten der Übersetzung, 1. kompilieren und 2. interpretieren.) (ソースコードから機械語に変換（翻訳）する必要があり、この翻訳のタイプが二種類、1.コンパイルと、2.インタープリットがあります。)
* Depending on the translation type, there are two types of language, 1. compiler language, and 2. interpreter language (script language). (Je nach Übersetzungstyp gibt es zwei Arten von Sprachen, 1. die Compilersprache und 2. die Interpretersprache (Skriptsprache).) (この翻訳の仕方によって、大きく1.コンパイラ言語と、2. インタープリタ言語（スクリプト言語）に分類されます。)
* Ruby is an interpreter language, script lanaguage. (Ruby ist eine Interpreter-Sprache, eine Skript-Sprache.) (Rubyはインタープリタ言語（スクリプト言語）です。)
* Therefore, the execution speed is slower than a compiler language such as C language, but it is possible to change the procedure or data structure during the execution flexibly and there are a lot of functions for it, which is one of the special features in Ruby. (Daher ist die Ausführungsgeschwindigkeit langsamer als bei einer Compilersprache wie z.B. C, aber es ist möglich, die Prozedur oder Datenstruktur während der Ausführung flexibel zu ändern und es gibt eine Menge Funktionen dafür, was eine der Besonderheiten in Ruby ist.) (そのため、実行速度はC言語などのコンパイラ言語に敵いませんが、実行中に柔軟にデータ構造や処理手順を変更することが可能で、このための機能が多く用意されていてRubyの一つの特徴にもなっています。)

That's it for today. (Das war's für heute.) 以上。
