//Require NodeJS & Readline-sync

var readlineSync = require('readline-sync');

// Celcius to Fahrenheit
var degrees = readlineSync.question('Enter degrees in Celcius: ');
var degreesNum = Number(degrees);
var degreesFahrenheit = degreesNum * 1.8 + 32;
console.log('It is ' + degreesFahrenheit + ' degrees in Fahrenheit!');

//Fahrenheit to Celcius
var fahrenheit = readlineSync.question('Enter degrees in Fahrenheit: ');
var fahDegreesNum = Number(fahrenheit);
var degreesCelcius = (fahDegreesNum - 32) * 5 / 9;
console.log('It is ' + degreesCelcius + ' degress in Celcius!');
