//Sum of Positive - Codewars

//Rule: You get an array of numbers, return the sum of all of the positives ones.

function positiveSum(arr) {
  var total = 0;
  for(i in arr) {
    if(arr[i] > 0) {
      total += arr[i];
    }
  }
  return total;
}
