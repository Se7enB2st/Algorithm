#Color Ghost

#Create a class Ghost
#Ghost objects are instantiated without any arguments.
#Ghost objects are given a random color attribute of white" or "yellow" or "purple" or "red" when instantiated

class Ghost
  def color
    %w(white yellow purple red).sample #%w separted array by whitespace(w), sample pick random array
  end
end
