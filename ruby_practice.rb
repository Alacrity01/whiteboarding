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

# The following code will run 100 times, and each time it will ask the user for their name. The code will break early if the user’s name is Bob.
# Rewrite the code using a while loop so the program will run *forever* unless the user enters a name of Bob.

# original
# 100.times do
#  puts "What is your name?"  
#  name = gets.chomp
#  if name == "Bob"
#    break
#  end
# end

# puts "Hi, Bob!"

# infinite loop unless Bob
# name = ''
# while name != "Bob" do
#   puts "What is your name?"
#   name = gets.chomp
# end

# puts "Hi, Bob!"


# Write a method called `average` that takes in an array of numbers and returns the average (the sum divided by the total number of numbers). Write it first using a `while` loop, then write it again using an `each` loop. (Hint - if you’re having issues with missing decimals, you may need the .to_f method…)

def average(arr)
  sum = 0
  arr.each { |number| sum += number }
  avg = sum.to_f / arr.length
end


p average([2, 1, 7, 5])  #=> 3.75


# Refactor using map method

# original
numbers = [1, 2, 4, 2]
doubled_numbers = []
numbers.each do |number|
 doubled_numbers << number * 2
end
p doubled_numbers

# refactored with map method
numbers = [1, 2, 4, 2]
p numbers.map {|number| number *= 2}

# Use the `map` method to convert the array of hashes
# ```
# items = [
#  {id: 1, body: 'foo'},
#  {id: 2, body: 'bar'},
#  {id: 3, body: 'foobar'}
# ]
# ```
# into an array that only contains the ids. The result should look like:
# ```
# [1, 2, 3]
items = [
 {id: 1, body: 'foo'},
 {id: 2, body: 'bar'},
 {id: 3, body: 'foobar'}]

p items.map {|element| element[:id]}

 # Use the `map` method with the `to_h` method to convert the array of hashes
# ```
# fruits = [
#  {"name" => "apple", "color" => "red"},
#  {"name" => "banana", "color" => "yellow"},
#  {"name" => "grape", "color" => "purple"}
# ]
# ```
# into a single hash where the keys are the names and the values are the colors. The result should look like:
# ```
# {"apple" => "red", "banana" => "yellow", "grape" => "purple"}
# ```

fruits = [
 {"name" => "apple", "color" => "red"},
 {"name" => "banana", "color" => "yellow"},
 {"name" => "grape", "color" => "purple"}
]

fruit_hash = {}
fruits.map { |fruit| fruit_hash[fruit["name"]] = fruit["color"] }

p fruit_hash

fruit.map { |name, color| name.to_sym }.to_h
