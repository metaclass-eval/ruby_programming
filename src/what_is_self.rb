

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
p Module.superclass       #=> Object

