#Refactored Greeting

#Create a person class/object. Each Person instance will have a greet method. 
#The Person instance should be instantiated with a name so that it no longer has to be passed into each greet method call.

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def greet(yourName)
    "Hello #{yourName}, my name is #{@name}"
  end
end
