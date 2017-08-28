class Person

 attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    "Hello #{@name}"
  end

end

p = Person.new('L. Ron')

puts p.name
puts p.greeting