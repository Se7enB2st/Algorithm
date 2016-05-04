#Regular Ball Super Ball

#Create a class Ball.
#Ball objects should accept one argument for "ball type" when instantiated.
#If no arguments are given, ball objects should instantiate with a "ball type" of "regular."

class Ball
	attr_accessor :ball_type
 
 def initialize(ball_type = "regular")
 	@ball_type = ball_type
 end 
end
