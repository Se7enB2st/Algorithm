//Longest Palindrome - Codewars

//Find the length of the longest substring in the given string s that is the same in reverse.
//If the length of the input string is 0, return value must be 0.

longestPalindrome=function(s){
    //this is where we keep track of the latest longest palindrome
    var longest;
    //empty strings have no palindromes
    if (!s || s.length === 0){
        longest = 0;
    } else {
        //non-empty strings have at least palindromes of length 1
        longest = 1;
    }
    //for each index in the byte array
    for(var i in s){
        //convert the index key (provided as a string) to a number
        i = parseInt(i);
        //no use checking for palindromes less than the current longest
        var nextI = i+longest;
        //iterate over string until we don't find possible palindromes
        do{
            //as a first pass, we will look for sequences of letters that
            // end with the same letter that it starts with.
            // so lets see if we can find a duplicate instance
            // of the current character
            nextI = s.indexOf(s[i], nextI);
            //if we found a duplicate instance
            if (nextI !== -1){
                //pull out the substring that starts and ends with the same character
                var compare = s.substring(i, nextI + 1);
                //expensive one-liner for creating a reversed version
                var reversed = compare.split('').reverse().join('');
                //simple string comarison to see if the reverse matches the original
                if (compare === reversed){
                    //if they match, we have found a new longest.
                    longest = compare.length;
                }
                //increment next so we start searching after the current match.
                nextI++;
            }
        }while (nextI !== -1);
    }
    return longest;
};
