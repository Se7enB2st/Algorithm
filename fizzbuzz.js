#FizzBuzz 
#Rule: For numbers divisible by 3, print out "Fizz".
      #For numbers divisible by 5, print out "Buzz".
      #For numbers divisible by both 3 and 5, print out "FizzBuzz" in the console.
      #Otherwise, just print out the number.
      
var fizzBuzz = function(num) {
    for(var i = 1; i <= num; i++){
        if(i % 3 === 0 && i % 5 === 0){
            console.log('FizzBuzz');
        } else if (i % 5 === 0){
            console.log('Buzz');
        } else if (i % 3 === 0){
            console.log('Fizz');
        } else {
            console.log(i);
        }
    };
};

fizzBuzz(100);
