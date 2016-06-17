#Longest Palindrome - Codewars

#Find the length of the longest substring in the given string s that is the same in reverse.
#If the length of the input string is 0, return value must be 0.

def palindrome?(s) #IMPORTANT
  if s.reverse == s
    return true
  else
    return false
  end
end

def longest_palindrome(string)
  #set start variable
  s_start = 0
  # store length of the string
  s_length = string.length
  # while the string still exists (ie: has a length), do this:
  while s_length > 0
    #while the start variable is less than the string length
    while s_start <= string.length - s_length
      # check if the string is a palendrome
      if palindrome?(string.slice(s_start,s_length))
        #if it is, print and return the length of the palendrome
        puts string.slice(s_start,s_length).length
        return string.slice(s_start,s_length).length
      end
      # increment the start variable by 1
      s_start += 1
    end
    s_start = 0
    s_length -= 1
  end
  # if string is empty, return zero
  return 0
end
