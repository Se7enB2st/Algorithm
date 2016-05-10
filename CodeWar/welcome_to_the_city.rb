#Welcome to the City

#Create a method say_hello that takes as input a name, city, and state to welcome a person

def say_hello(name, city, state)
  x = name.join(" ")
  return "Hello, #{x}! Welcome to #{city}, #{state}!"
end
