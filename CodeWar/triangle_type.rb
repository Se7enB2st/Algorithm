#Triangle Type

# Should return ᐃ type:
#  0 : if ᐃ cannot be made with given sides
#  1 : acute ᐃ
#  2 : right ᐃ
#  3 : obtuse ᐃ

def triangle_type (a, b, c)
  
  a, b, c = [a,b,c].sort
  
  # If smaller sides aren't bigger than biggest, then not a triangle
  return 0 if a + b <= c
  
  # The rest depends on Pythagorean's Theorem
  
  acute_triangle = 1
  right_triangle = 0
  obtuse_triangle = -1
  
  case a**2 + b**2 <=> c**2
  when acute_triangle then 1
  when right_triangle then 2
  when obtuse_triangle then 3
  end
  
end
