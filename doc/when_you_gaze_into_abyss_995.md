# When you gaze long into the abyss (深淵を覗く時) [995#]

1. [What is self (自分とは何か?)]()
2. [Start Terminal (ターミナル起動)]()

*このチュートリアルは約10分で終了します*

----

## 1. What is self? (自分とは何か?)

Probably. The most interesting thing in the world is self, because I know self exists in this world but I do not know what self is.  (おそらく世界で最も興味深いことは自分である、なぜなら私は自分がこの世に存在していることを知っているけれども、私は自分が何なのかを知らないからだ。)

If you want to gaze into the abyss, you may need to begin with gazing into self. (深淵を覗こうと思ったら、まずは自分を見つめることから始めなければならないかもしれない。) And the reflection (meta-recognition) helps it. (その時に役立つのがリフレクション（メタ認知）だ。)

what_is_self.rb
```ruby
p RUBY_VERSION            #=> 2.7.1
p self                    #=> main
p self.class              #=> Object
p self.class.class        #=> Class
p self.class.class.class  #=> Class

puts
p self.class              #=> Object
p self.class.superclass   #=> BasicObject
p self.class.superclass.superclass #=> nil
p self.class.superclass.class      #=> Class

puts
p self.class.ancestors
#=> [Object, PP::ObjectMixin, Kernel, BasicObject]
p self.class.included_modules
#=> [PP::ObjectMixin, Kernel]
p PP::ObjectMixin.class   #=> Module
p Kernel.class            #=> Module
p Module.class            #=> Class
```

Object#class, Class#superclass, Module#ancestors, Module#included_modules are usuful methods for relfection. (以下のメソッドはリフレクションするのにとても便利だObject#class, Class#superclass, Module#ancestors, Module#included_modules。)

最初に与えられるselfはソースコード全体を表すトップレベルの自身を表すオブジェクト（main）だ。しかし、面白いことにそれ（mainオブジェクト）を直接参照することはできず、必ず自分（selfオブジェクト）を通すことでしか見ることができない。

## 2. Guidance to the Class structure in Ruby (Rubyのクラス構造)


まず、簡単にオブジェクト指向の世界をおさらいしておこう。
* 世界は全てオブジェクトによって構成されている。
* オブジェクトの設計図に相当するモノがクラス、クラスを元に実体化したモノがインスタンスである。
* クラス（設計図）は一つであっても、同じクラスから実体化されたインスタンスは複数存在しうる。
* 言い方を変えれば、複数のインスタンスに共通する性質として一般化（汎化/抽象化）したものがクラス、クラスを特殊化（具体化）したものがインスタンスだと言うこともできる。
* クラスにはインスタンスの振る舞いを決定するメソッドが定義されている。
* つまり、実体化されたインスタンスはクラスで定義されたメソッドを実行する（呼び出す）ことができる。
* あるクラスの性質を引き継いで別のクラスを作ることもできる。これを「継承」と言う。この元になったクラスをスーパークラス、新しく作られたクラスをサブクラスと呼ぶ。


class_instance.rb
```ruby
class Klass
  def hello
    p "Hello, World!!"
  end
end

instance = Klass.new
instance.hello
#=> Hello, World!!
```

ここから少しずつ深淵に少し近づいていくことにしよう。用心して進みながらどこかで足を踏み外して欲しい。
* まず、クラスもインスタンスもどちらもオブジェクトである。
* そのため、クラスもその設計図に相当するクラスがあり、これをメタクラスと呼ぶ。
* メタクラスにもさらにクラスがある。
* つまり、クラスにはクラス階層がある。
* Rubyには、もう一つクラスに似たモノにモジュールがある。
* モジュールはクラス同様にメソッドを定義できるがインスタンスを生成することはできない。
* 代わりに、クラスに含むことができる。この機能によって複数のクラスに共通するメソッドを定義できる。

以上のことを踏まえて、selfを見つめることによって、世界は以下のようなクラス階層関係で成り立っていることが見えてくる。

## 3. When you gaze long into the self (自分自身を見つめる時)

**You gaze also into the abyss.** (それは、深淵を覗いていることにもなる。)

*by Metaclass Eval*

