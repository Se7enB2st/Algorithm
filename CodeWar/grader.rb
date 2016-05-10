#Grader

#Create a function that takes a number as an argument and returns a grade based on that number.

#Score	                                     Grade
#Anything greater than 1 or less than 0.6	   "F"
#0.9 or greater	                             "A"
#0.8 or greater	                             "B"
#0.7 or greater	                             "C"
#0.6 or greater	                             "D"

def grader(score)
  if score > 1 || score < 0.6
    "F"
  elsif score >= 0.9
    "A"
  elsif score >= 0.8
    "B"
  elsif score >= 0.7
    "C"
  else score >= 0.6
    "D"
  end
end
