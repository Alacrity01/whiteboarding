# Whiteboarding Questions 1

# Be sure to follow the process outlined in the cheat sheet!

# Easy:
# 1. Write a method that returns an array of every number from 1 to 100. 
def array_100
   (1..100).to_a
end
# p array_100

# 2. Write a method that returns an array of every other number from 1 to 100. (That is, 1, 3, 5, 7 … 99)

def odds_100
  arr = (1..100).to_a
  arr.each do |number|
    if number % 2 == 0
      arr.delete(number)
    end
  end
  arr
end
# p odds_100

def odds_100
  arr = []
  n = 1
  while n <= 100 do
    arr << n
    n += 2
  end
  arr
end
# p odds_100

# 3. Write a method that returns an array of all numbers from 1 to 1000 that are divisible by 3.
def div_by_3
  arr = []
  n = 3
  while n <= 999 do
    arr << n
    n += 3
  end
  arr
end
# p div_by_3

def div_by_3
  arr = (1..1000).to_a

  n = 1
  while n <= 1000 do
    # p number % 3
    if n % 3 != 0
      arr.delete(n)
    end
    n += 1
  end
  arr
end
# p div_by_3

def div_by_3
  n = 1
  arr = []
  while n <= 1000 do
    if n % 3 == 0
      arr << n
    end
    n += 1
  end
  arr
end
# p div_by_3


# 4. Write a method that accepts one argument - an array of numbers - and returns an array of all numbers from that original array that are greater than 7. For example, if the input is [5, 8, 1, 7, 9, 10], the function should return [8, 9, 10].

# 5. Write a method that accepts an array of numbers as a parameter, and returns the number of how many 55’s there are in the array. For example, if the input is [55, 4, 7, 55, 9, 1, 55, 2, 3, 55, 0], the output should be 4. NOTE: DO NOT USE RUBY’s built-in “count” method.

# 6. Write a method that accepts an array of numbers and returns the sum of the numbers. For example, if the input is [1, 5, 7, 9, 2, 0], the output should be 24. Don’t use any of the built in “sum” methods that Ruby comes with.

# Medium:
# 1. Write a method that accepts an array and returns it as a hash. For example, [“a”, “b”, “c] should turn into {0 => “a”, 1 => “b”, 2 => “c”}

# 2. Write a method that accepts a string and returns whether it’s a palindrome. (without using the reverse method)

# Advanced:
# 1. Write a method to generate/print/store the first "n" prime numbers.

# 2. Given an array of randomly sorted numbers, write a method that sorts them in descending order (without using any sort function built into the language.)

# 3. Given a tic-tac-toe board (matrix of 3 x 3), write a method that can check to see whether X or O won.
