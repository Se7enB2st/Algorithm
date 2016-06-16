//Absent Vowels - Codewars

//Your job is to figure out the index of which vowel is missing from a given string.
//A has an index of 0, E has an index of 1, I has an index of 2, O has an index of 3, U has an index of 4.
//There is no need for string validation and every sentence given will contain all vowles but one. (Also, you won't need to worry about capitals)

//Solution 1:

function absentVowel(str){
  vowels = ['a', 'e', 'i', 'o', 'u'];
  for(var j = 0; j < vowels.length;  j++){
    if(str.indexOf(vowels[j]) === -1){
      return j;
    }
  }
}

//Solution 2:

function absentVowel(x){
  var vowels = x.match(/[aeiou]/g)

  if(vowels.indexOf('a') == -1)  return 0;
  if(vowels.indexOf('e') == -1)  return 1;
  if(vowels.indexOf('i') == -1)  return 2;
  if(vowels.indexOf('o') == -1)  return 3;
  if(vowels.indexOf('u') == -1)  return 4;
}
