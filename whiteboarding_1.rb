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
def greater_than_7(arr)
  new_arr = []
  arr.each do |number|
    if number > 7
      new_arr << number     
    end
  end
  return new_arr
end
array = [5,50,2,55,55,22,1,3,5,70,55,100,7,6,8,55]
# p greater_than_7(array)

# 5. Write a method that accepts an array of numbers as a parameter, and returns the number of how many 55’s there are in the array. For example, if the input is [55, 4, 7, 55, 9, 1, 55, 2, 3, 55, 0], the output should be 4. NOTE: DO NOT USE RUBY’s built-in 'count' method.
def count_of_55(arr)
  count = 0
  arr.each do |number|
    if number == 55
      count += 1
    end
  end  
  count
end
# p count_of_55(array)
# 6. Write a method that accepts an array of numbers and returns the sum of the numbers. For example, if the input is [1, 5, 7, 9, 2, 0], the output should be 24. Don’t use any of the built in 'sum' methods that Ruby comes with.
def sum_the_array(arr)
  arr.reduce(&:+)
end
array = [1, 5, 7, 9, 2, 0]
# p sum_the_array(array)

def sum_the_array(arr)
  sum = 0
  arr.each do |number|
    sum += number
  end
  sum
end
# p sum_the_array(array)


# Medium:
# 1. Write a method that accepts an array and returns it as a hash. For example, ['a', 'b', 'c'] should turn into {0 => 'a', 1 => 'b', 2 => 'c'}
def array_to_hash(arr)
  new_hash = {}
  n = 0
  arr.each do |element|
    new_hash[n] = element
    n += 1
  end
  new_hash
end
array = ['a', 'b', 'c'] 
# p array_to_hash(array)

# 2. Write a method that accepts a string and returns whether it’s a palindrome. (without using the reverse method)
def palindrome?(str)
  str.downcase == str.downcase.reverse
end
# p palindrome?("Radar")
# p palindrome?("Radars")

def palindrome?(str)
  reversed_str = ""
  i = str.length - 1
  str.length.times do
    reversed_str += str[i]
    i -= 1
  end
  str.downcase == reversed_str.downcase
end
# p palindrome?("Radar")
# p palindrome?("Radars")

# Advanced:
# 1. Write a method to generate/print/store the first "n" prime numbers.
def n_prime_numbers(n)
  primes = [2]
  number_to_test = 2
  while n > primes.length do
    i = 0
    number_to_test += 1
    prime = true
    primes.length.times do
      if number_to_test % primes[i] == 0
        prime = false
      end
      i += 1
    end
    if prime == true
      primes << number_to_test
    end
  end
  primes
end

p n_prime_numbers(10)
first_10_primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
if n_prime_numbers(10) == first_10_primes
  print "The method is a success"
else
  print "There is an error in the method"
end


# 2. Given an array of randomly sorted numbers, write a method that sorts them in descending order (without using any sort function built into the language.)

# 3. Given a tic-tac-toe board (matrix of 3 x 3), write a method that can check to see whether X or O won.

