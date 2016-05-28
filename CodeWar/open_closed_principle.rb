#Open/Closed Principle

#The open/closed principle states that code should be closed for modification, yet open for extension. 
#That means you should be able to add new functionality to an object or method without altering it.

#Implement 3 lambdas that alter a message based on emotoion:

spoken    =->(greeting) { "#{greeting.capitalize}." }
shouted   =->(greeting) { "#{greeting.upcase}!" }
whispered =->(greeting) { "#{greeting.downcase}." }

greet =->(style, msg) { style.call(msg) }
