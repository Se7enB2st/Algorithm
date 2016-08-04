# Perimeter Formualas in Ruby

# Permieter of Square
def perimeter_of_square(side)
	4*side
end 

# Permieter of Rectangle
def perimeter_of_rectangle(length, width)
	2*(length + width)
end 

# Permieter of Circle
def perimeter_of_circle(radius)
	2*Math::PI*radius
end 

# Permieter of Triangle
def perimeter_of_triangle(side1, side2, base)
	side1 + side2 + base 
end 
	
