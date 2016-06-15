//Require NodeJS & Readline-sync

//Ordinal: The ordinal of a number is the number that defines an element's position in a series,
//such as "first","second," or "third." Our program will convert numbers like 1, 2, 3 into ordinals like 1st, 2nd, 3rd, etc.

var readlineSync = require('readline-sync');

var ordinal = function (digit) {
  var digitNum = Number(digit);
  var lastDigit = digitNum % 10;
  var lastTwoDigits = digitNum % 100;
  if (lastTwoDigits > 10 && lastTwoDigits < 20) {
    return digit + 'th';
  }else if (lastDigit === 1) {
    return digit + 'st';
  } else if (lastDigit === 2) {
    return digit + 'nd';
  } else if (lastDigit === 3) {
    return digit + 'rd';
  } else {
    return digit + 'th';
  }
};


var input = readlineSync.question('Enter a digit: ');

var value = ordinal(input);
console.log(value);
