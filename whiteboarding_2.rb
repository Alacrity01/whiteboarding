# Whiteboarding #2 Questions

# i.  Write a function that accepts an array of strings and returns a new array containing every other string from the original array. For example, if the input is ['a', 'b', 'c', 'd', 'e', 'f'], the output should be ['a', 'c', 'e'].
def every_other_string(arr)
  i = 0
  new_arr = []
  while arr[i] do
    new_arr << arr[i]
    i += 2
  end
  new_arr
end

p every_other_string(['a', 'b', 'c', 'd', 'e', 'f']) # expect ['a', 'c', 'e']

# ii. Write a method that accepts an array of strings and returns a new array that has the string 'awesomesauce' inserted between every string. For example, if the initial array is ['a', 'b', 'c', 'd', 'e'], then the returned array should be ['a', 'awesomesauce', 'b',  'awesomesauce', 'c',  'awesomesauce', 'd',  'awesomesauce', 'e'].

def awesomesauce_array(arr)
  new_arr = []
  arr.each do |string|
    new_arr << string
    new_arr << 'awesomesauce'
  end
  new_arr.pop()
  new_arr
end

p awesomesauce_array(['a', 'b', 'c', 'd', 'e']) # expect ['a', 'awesomesauce', 'b',  'awesomesauce', 'c',  'awesomesauce', 'd',  'awesomesauce', 'e']

# iii.  Write a method that accepts one argument - an array of numbers. The method should return the greatest number. For example, if the input is [5, 4, 8, 1, 2], the output should be 8.

def greatest_number(num_arr)
  max = num_arr[0]
  num_arr.each do |number|
    if number > max
      max = number
    end
  end
  max
end

p greatest_number([5, 4, 8, 1, 2]) # expect 8

# iv. Write a method that accepts a number and returns its factorial. For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120.

# v.  Write a method that accepts one argument - an array of numbers that are in ascending order. The method that returns a new array with the same values in descending order. However, do not use the 'reverse' method built in to Ruby.


# vi. Write a method that accepts two arrays of numbers, and returns an array of every sum of every combination of single numbers from first and second array. For example, if the method receives [1, 5, 10] and [100, 500, 1000], the method should return this array: [101, 501, 1001, 105, 505, 1005, 110, 510, 1010].

# Bonus: Research recursive functions. Then solve the factorial question using recursion instead of a loop!

# (If you're done early, here are some more array questions, some are fairly difficult: http://javarevisited.blogspot.com/2015/06/top-20-array-interview-questions-and-answers.html)
