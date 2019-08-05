# Refactor with each loop

# original
numbers = [1, 2, 4, 2]
sum = 0
index = 0
numbers.length.times do
 number = numbers[index]
 sum = sum + number
 index = index + 1
end
p sum

# refactored
numbers = [1, 2, 4, 2]
sum = 0
numbers.each {|number| sum += number} # single line syntax
# numbers.each do |number| # multi line syntax
#   sum += number
# end

p sum

# Write a method called `double_numbers` that takes in an array and returns a new array with each number doubled. Use an `each` loop in the method.

def double_numbers(arr)
  new_arr = []
  arr.each do |number|
    number *= 2
    new_arr << number
  end
  new_arr
end

p double_numbers([4, 1, 3])  #=> [8, 2, 6]

# Read about the Ruby `while` loop. Then refactor the code below using `while`. *Warning* - a `while` loop will run forever if you write it incorrectly (unlike a `times` loop or an `each` loop). You can enter Ctrl C in your terminal to force Ruby to quit if it’s stuck in an infinite loop.

# original
numbers = [1, 2, 4, 2]
sum = 0
index = 0
numbers.length.times do
 number = numbers[index]
 sum = sum + number
 index = index + 1
end
p sum

numbers = [1, 2, 4, 2]

# refactored with while loop
numbers = [1, 2, 4, 2]
sum = 0
index = 0
while index < numbers.length do
  sum += numbers[index]
  index += 1
end
p sum
