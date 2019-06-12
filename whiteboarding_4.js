//  1. Write a function that accepts an array as a parameter and returns true or false depending on whether there are any duplicate values. Use the *nested loops approach* as described in the slides.

function duplicates(array){
  for (i = 0; i < array.length; i++) {
    for(j = 0; j < array.length; j++) {
      if array(j)
    }
  }
}


// 4. Write a method that accepts an array of numbers and returns the sum of all odd numbers.
function sumOdds(numbers) {
  var sum = 0;
  numbers.forEach(function(number) {
    if (number % 2 === 1) {
      sum += number;
    }
  });
  return sum
}
console.log(sumOdds([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))