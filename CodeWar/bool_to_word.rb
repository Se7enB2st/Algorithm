#Convert boolean values to strings 'Yes' or 'No'

#Given: a boolean value
#Return: a 'Yes' string for true and a 'No' string for false

#Solution 1:

def bool_to_word bool
  if bool == true
    return "Yes"
   else
     return "False"
  end
end

#Solution 2:

def bool_to_word bool
  bool ? 'Yes' : 'No'
end
