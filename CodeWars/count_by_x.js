//Create a function with two arguments that will return a list of length (n) with multiples of (x).
//Example: countBy(2,5) === [2,4,6,8,10]

function countBy(x, n) {
  var z = []
  for (var i = 1; i <= n; i++) {
    z.push(x* i);
  }
  return z
}
