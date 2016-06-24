//Stringy Strings - Codewars

//write me a function stringy that takes a size and returns a string of alternating '1s' and '0s'.
//the string should start with a 1
//Example: A string with size 6 should return :'101010'.

function stringy(size) {
  string = "1";
  for (var i = 0; i < size-1; i++) {
    if(i % 2 == 0)
      string += "0";
    else
      string += "1";
  }
  return string;
}
