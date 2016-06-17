//Stop gninnipS My sdroW! - Codewars

//Write a function that takes in a string of one or more words, and returns the same string,
//but with all five or more letter words reversed (Just like the name of this Kata). 
//Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

function spinWords(string) {
    return string.split(' ').map(function (word) {
        if (word.length >= 5) {
            return word.split("").reverse().join("")
        }else{
            return word;
        }
    }).join(' ');
}
