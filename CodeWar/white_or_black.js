//White or Black - Codewars

//You have a chess board 8x8. Create a function that calculate the color of the field and returns white or black?
//Example: mineColor(a, 8) ==> white, mineColor(b, 1) ==> white, mineColor(a, 1) ==> black

//Solution 1:

function mineColor(line, number) {
  if(number % 2 === 0 && (line === 'a' || line === 'c' || line === 'e' || line ==='g')){
    return 'white';
  }
  else if(number % 2 === 1 &&(line === 'b' || line === 'd' || line === 'f' || line ==='h')){
    return 'white';
  }
  else{
    return 'black';
  }
}

//Solution 2:

function mineColor(line, number) {
  return ['white','black'][('abcdefgh'.indexOf(line) + number) % 2];
}
