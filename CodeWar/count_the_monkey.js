//Count the Monkeys - Codewars

//Rule: Given the number (n), populate an array with all numbers up to and including that number,
//but excluding zero and returns as an array.

function monkeyCount(n) {
  let arr = [];
  for (let i = 1; i <= n; i++){
    arr.push(i);
    };
    return arr;
}
