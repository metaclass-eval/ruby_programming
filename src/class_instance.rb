
class Klass
  def hello
    p "Hello, World!!"
  end
end

instance = Klass.new
instance.hello

class Klass2 < Klass
end

instance = Klass2.new
instance.hello

def instance.hello2
    p "Hello, World2!!"
end

p instance.class
p instance.singleton_class.superclass

