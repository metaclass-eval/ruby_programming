
class SuperClass
  def hello
    p "Hello, World!!"
  end
end

class SubClass < SuperClass
end

instance = SubClass.new
instance.hello

def instance.hello
    p "Hello, Another World!!"
end

instance.hello
p instance.class
p instance.singleton_class.superclass

