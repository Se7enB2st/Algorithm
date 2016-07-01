#Given an expression in the form of a string that includes parantheses,
#check if all opening parantheses are balanced(are all closed,closed in order).

#Stack Approach:
def balanced_parentheses(string)
  strings = string.scan(/\W/) #pulling out non-word characters
  parentheses = { '{' => '}', '[' => ']', '(' => ')' } #match parentheses in hash
  stack = []

  strings.each do |s|
    if parentheses.include? s #put parentheses into stack
      stack.push(s)
    elsif parentheses.values.include? s
      if stack.empty? || stack.last != parentheses.invert[s] #return an inverted hash
        return false
      else
        stack.pop
      end
    end
  end

  stack.empty? ? true : false #empty means all parentheses find their match else it is unbalanced
end

p balanced_parentheses("H[el(lo, e{very} one!)]") #true
