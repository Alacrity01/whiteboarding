// # Whiteboarding Questions 1

// # Be sure to follow the process outlined in the cheat sheet!

// # Easy:
// # 1. Write a method that returns an array of every number from 1 to 100. 
function array_100(){
  let n = 1;
  let arr = [];
  while(n <= 100){
    arr.push(n);
    n++;
  }
  return(arr);
}
// console.log(array_100());

// # 2. Write a method that returns an array of every other number from 1 to 100. (That is, 1, 3, 5, 7 … 99).
function  odds_100(){
  let n = 1;
  let arr = [];
  while(n <= 100){
    arr.push(n);
    n += 2;
  }
  return(arr);
}
// console.log(odds_100());


// # 3. Write a method that returns an array of all numbers from 1 to 1000 that are divisible by 3.
function div_by_3(){
  let n = 1;
  let arr = [];
  while(n <= 1000){
    if(n % 3 == 0){
      arr.push(n);
    }
    n++;
  }
  return(arr);
}
// console.log(div_by_3());

function div_by_3(){
  let n = 3;
  let arr = [];
  while(n <= 1000){
    arr.push(n);
    n += 3;
  }
  return(arr);
}
// console.log(div_by_3());

// # 4. Write a method that accepts one argument - an array of numbers - and returns an array of all numbers from that original array that are greater than 7. For example, if the input is [5, 8, 1, 7, 9, 10], the function should return [8, 9, 10].
function greater_than_7(arr){
  let new_arr = [];
  for(i = 0; i < arr.length; i++){
    if(arr[i] > 7){
      new_arr.push(arr[i]);
    }
  }
  return new_arr;
}
let array = [5,50,2,55,55,22,1,3,5,70,55,100,7,6,8,55]
// console.log(greater_than_7(array));

// # 5. Write a method that accepts an array of numbers as a parameter, and returns the number of how many 55’s there are in the array. For example, if the input is [55, 4, 7, 55, 9, 1, 55, 2, 3, 55, 0], the output should be 4. NOTE: DO NOT USE RUBY’s built-in “count” method.
function count_of_55(arr){
  let count = 0;
  for(i = 0; i < arr.length; i ++){
    if(arr[i] == 55){
      count++;
    }
  }
  return count
}
// console.log(count_of_55(array));


// # 6. Write a method that accepts an array of numbers and returns the sum of the numbers. For example, if the input is [1, 5, 7, 9, 2, 0], the output should be 24. Don’t use any of the built in “sum” methods that Ruby comes with.
function sum_the_array(arr){
  let sum = 0;
  for(i = 0; i < arr.length; i++){
    sum += arr[i];
  }
  return sum;
}
array = [1, 5, 7, 9, 2, 0]
console.log(sum_the_array(array));
// # Medium:
// # 1. Write a method that accepts an array and returns it as a hash. For example, [“a”, “b”, “c] should turn into {0 => “a”, 1 => “b”, 2 => “c”}

// # 2. Write a method that accepts a string and returns whether it’s a palindrome. (without using the reverse method)

// # Advanced:
// # 1. Write a method to generate/print/store the first "n" prime numbers.

// # 2. Given an array of randomly sorted numbers, write a method that sorts them in descending order (without using any sort function built into the language.)

// # 3. Given a tic-tac-toe board (matrix of 3 x 3), write a method that can check to see whether X or O won.

