Contents
=================


1. [What is programming language? (Was ist eine Programmiersprache?) (プログラミング言語とは何か?)](#1-what-is-programming-language-was-ist-eine-programmiersprache-%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E8%A8%80%E8%AA%9E%E3%81%A8%E3%81%AF%E4%BD%95%E3%81%8B)
  1. [A set of commands (Ein Satz von Kommandos) (命令のセット)](#1-1-a-set-of-commands-ein-satz-von-kommandos-%E5%91%BD%E4%BB%A4%E3%81%AE%E3%82%BB%E3%83%83%E3%83%88)
  2. [Translation types (Übersetzungstypen) (翻訳の種類)](#1-2-translation-types-%C3%BCbersetzungstypen-%E7%BF%BB%E8%A8%B3%E3%81%AE%E7%A8%AE%E9%A1%9E)
  3. [Pros and Cons (Pro und Contra) (長所と短所)](#1-3-pros-and-cons-pro-und-contra-%E9%95%B7%E6%89%80%E3%81%A8%E7%9F%AD%E6%89%80)
2. [Summary: What is computer programing? (Zusammenfassung: Was ist Computerprogrammierung?) (まとめ: コンピュータプログラミングとは何か？)](#1-4-summary-what-is-computer-programing-zusammenfassung-was-ist-computerprogrammierung-%E3%81%BE%E3%81%A8%E3%82%81-%E3%82%B3%E3%83%B3%E3%83%94%E3%83%A5%E3%83%BC%E3%82%BF%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E3%81%A8%E3%81%AF%E4%BD%95%E3%81%8B)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc.go)

----

Was ist eine Programmiersprache?

Ein Satz von Kommandos

* Die Programmiersprache ist ein Satz von Kommandos zur Bedienung eines Computers.
* Es gibt zwei Arten von Kommandosätzen.

1Maschinencode, Maschinensprache
2Höhere Programmiersprache

![machine_code_source_code.png](../png/machine_code_source_code.png)

* Eine solche Sprache wie *C*, *Python* und *Ruby* wird als **Hochsprache** bezeichnet, die funktional und für den Menschen lesbar ist.
* Auf der anderen Seite ist **Maschinencode** ein direkter Befehlssatz für die CPU, Central Processing Unit, der in der Regel für den Menschen nicht lesbar ist, d.h. nur 0- und 1-Sequenz.
* Normalerweise müssen wir die Hochsprache in den Maschinencode übersetzen/umwandeln.
* Es bedeutet, d.h. das Erlernen einer Programmiersprache bedeutet, dass Sie 1) lernen sollten, wie man eine der höheren Programmiersprachen als Sourcecode schreibt/liest und 2) wie man aus dem Sourcecode in den Maschinencode übersetzt/konvertiert.

Übersetzungstypen

* Es gibt zwei Möglichkeiten, von Sourcecode in Maschinencode zu konvertieren.

1Kompilieren
2Interpretieren

FIG: image compiler, interpreter

* **Kompilieren** bedeutet, dass der Sourcecode auf einmal in Maschinencode umgewandelt wird und der Maschinencode normalerweise ausführbar ist, während **Interpretieren** bedeutet, dass der Sourcecode zeilenweise in Maschinencode umgewandelt wird und ausgeführt wird.
* Programmiersprachen werden nach der Art der Übersetzung klassifiziert.

1Compilersprache
2Interpretersprache

* Diese Art der Klassifizierung hängt von der Art der Übersetzung und nicht von der Sprachgrammatik ab.
* Bekannte Compilersprachen sind zum Beispiel C/C++, Fortran, Go und so weiter.
* Bekannte Interpretersprachen sind Python, Ruby, Perl usw.
* Die Interpretersprache wird auch **Skriptsprache** genannt.
* Es gibt jedoch einen Interpreter für die Sprache C und einen Compiler für Ruby.
* Die Regeln oder Grammatik der Sprache wird **Sprachenspezifikation** genannt, während der eigentliche Code für die Sprachübersetzung **Sprachimplementierung** genannt wird.

FIG: language group

Note
* Es ist wichtig zu wissen, welcher Compiler oder Interpreter der Haupt- oder gängige Übersetzungstyp in einer Sprache ist, obwohl es schwierig ist, einen Sprachtyp anhand des Übersetzungstyps eindeutig zu klassifizieren.
* Denn die meisten Sprachen sind in der Regel abhängig von der Art der Übersetzung gestaltet.
* Die Compiler-Sprache definiert die Prozedur oder Datenstruktur in der Regel im Vorfeld der Ausführung, während die Interpreter-Sprache die Prozedur oder Datenstruktur auch während der Ausführung ändern kann.
* So muss in einer Compiler-Sprache wie C normalerweise der Datentyp einer Variablen wie Integer oder Realzahl vor ihrer Verwendung definiert werden, was als **Variablendeklaration** bezeichnet wird, aber in einer Interpretator-Sprache wie Ruby und Python ist die Variablendeklaration im Allgemeinen nicht ausdrücklich erforderlich.

Pro und Contra

* Für jede Art der Sprachübersetzung, Compiler/Interpreter-Sprache, gibt es Pro und Kontra.

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


Zusammenfassung: Was ist Computerprogrammierung?

* Eine Programmiersprache hat zwei Arten von Code, 1. den Sourcecode und 2. den Maschinencode.
* Wir müssen den Sourcecode in den Maschinencode übersetzen/umwandeln, und es gibt zwei Arten der Übersetzung, 1. kompilieren und 2. interpretieren.
* Je nach Übersetzungstyp gibt es zwei Arten von Sprachen, 1. die Compilersprache und 2. die Interpretersprache (Skriptsprache).
* Ruby ist eine Interpreter-Sprache, eine Skript-Sprache.
* Daher ist die Ausführungsgeschwindigkeit langsamer als bei einer Compilersprache wie z.B. C, aber es ist möglich, die Prozedur oder Datenstruktur während der Ausführung flexibel zu ändern und es gibt eine Menge Funktionen dafür, was eine der Besonderheiten in Ruby ist.

That's it for today. (Das war's für heute.) 以上。
