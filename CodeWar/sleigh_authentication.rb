#Sleigh Authentication

#Your task is to implement the authenticate() method of the sleigh, which takes the name of the person, who wants to board the sleigh and a secret password.
#If, and only if, the name equals "Santa Claus" and the password is "Ho Ho Ho!"

class Sleigh
  def authenticate(name, password)
    if name == "Santa Claus" && password == "Ho Ho Ho!"
      return true
    else 
      return false
     end
  end
end
