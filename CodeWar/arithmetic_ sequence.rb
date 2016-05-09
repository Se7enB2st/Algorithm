#Arithmetic Sequence!
#A sequence is usually a set or an array of numbers that has a strict way for moving from the nth term to the (n+1)th term.
#If f(n) = f(n-1) + c where c is a constant value, then f is an arithmetic sequence.

#Rule: You're going to write a function that's going to return the value in the nth index of an arithmetic sequence.

def nthterm(first, n, c)
  first + n * c
end
