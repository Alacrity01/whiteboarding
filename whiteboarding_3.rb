# Whiteboarding #3 Questions

# 1. Write a function that reverses a string. Don’t use the “reverse” method!
def reverse_string(str)
  new_str = ''

  i = str.length - 1
  str.length.times do
    new_str += str[i]
    i -= 1
  end
  new_str
end
p reverse_string("jeff")

# 2. Write a function that accepts a string and returns the number of times that the letter “a” occurs in it.
def a_count(str)
  count = 0
  i = 0
  str.length.times do
    if str[i].downcase == 'a'
      count += 1
    end
    i += 1
  end
  count
end
p a_count('Alphabetical')


# 3. Write a method that accepts two arguments. The first argument is an array of numbers that are in ascending order. The second argument is a number to search for within in the array. The method should do a linear search and return the index at which this value is found, or it should return nil if the value is not found. See if there’s a way in which you can optimize this method to keep its number of steps to a minimum! Note: Do not use the “index” method!
def number_search(arr, num)
    
end


# 4. Write a method that accepts two arguments. The first argument is an array of numbers that are in ascending order. The second argument is a new number that is not yet in the array. The method should return a new array with the new number inserted in the proper place. Do not use the “sort” method!

# 5. Write a method that accepts two arguments. The first argument is an array of numbers that are in ascending order. The second argument is a number that is contained within the array. The method should return the string “lower” if the value is found in the lower half of the array, and it should return “higher” if the value is found within the greater half of the array. Try to optimize this algorithm so that it takes a minimum number of steps!

# 6. Work on this one together: Write a method that does binary search. Specifically, it should accept two arguments. The first argument is an array of numbers that are in ascending order. The second argument is a number that may or may not be contained within the array. The method should perform binary search to find the index at which this second value is found within the array. If the value cannot be found within the array, the method should return nil. 

# def binary_search(ascending_numbers, number)
#   #p "numbers array length: #{ascending_numbers.length}"
#   index_top = ascending_numbers.length - 1
#   index_bottom = 0
  
#   loop_count = 1
#   until index_top - 1 <= index_bottom
#     index = (index_top + index_bottom).ceil / 2
    
#     if number == ascending_numbers[index]
#       p loop_count
#       return "index = #{index}"
#     elsif number < ascending_numbers[index]
#       index_top -= 1
#     elsif number > ascending_numbers[index] 
#       index_bottom += 1
#     end
#     loop_count += 1
#   end
#   p loop_count
#   nil
# end

# numbers_array = ['a','b','c','d','e','f','g']
# p numbers_array
# p binary_search(numbers_array, 'a')
# p binary_search(numbers_array, 'b')
# p binary_search(numbers_array, 'c')
# p binary_search(numbers_array, 'd')
# p binary_search(numbers_array, 'e')
# p binary_search(numbers_array, 'f')
# p binary_search(numbers_array, 'g')




# 7. Write a method that accepts two arrays, and returns a new array that does a “riffle shuffle” between them. That is, if the first array is [1, 3, 5, 7, 9], and the second array is [10, 8, 6, 4, 2], the returned array should be [1, 10, 3, 8, 5, 6, 7, 4, 9, 2].

# BONUS: Read about and implement the following sorting algorithms that sort an array of numbers. Be sure to identify the Big O efficiency of each algorithm! 
# * Bubble sort
# * Insertion sort
# * Selection sort
# * Merge sort
# * Quick sort
# * Heap sort 

