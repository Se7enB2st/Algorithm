#Function Composition

#Your task is to create a compose function to carry out this task, which will be passed two functions or lambdas.
#Ruby functions will be passed, and should return, either a proc or a lambda. 

def compose(f,g)
   return lambda {|*n| f.(g.(*n)) }
end
