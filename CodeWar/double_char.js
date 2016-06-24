//Double Char - Codewars
//Given a string, you have to return a string in which each character (case-sensitive) is repeated once.
//Example: doubleChar("Hello World") ==> "HHeelllloo  WWoorrlldd"

function doubleChar(str) {
  // Your code here
  return str.split('').map(function(s){
     return s+s;
  }).join('');
}
