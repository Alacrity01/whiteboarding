# Week 1
# 1. Read about the Ruby `each` method for arrays. Then refactor the code below using `each`.
# ```
# numbers = [1, 2, 4, 2]
# sum = 0
# index = 0
# numbers.length.times do
#  number = numbers[index]
#  sum = sum + number
#  index = index + 1
# end
# p sum

numbers = [1, 2, 4, 2]
sum = 0
numbers.each do |number|
   sum += number
end
p sum

# ```
#    1. Write a method called `double_numbers` that takes in an array and returns a new array with each number doubled. Use an `each` loop in the method.
# ```
# p double_numbers([4, 1, 3])  #=> [8, 2, 6]
# ```

def double_numbers(arr)
   new_arr = []
   arr.each do |number|  
      new_arr << number * 2
   end 
   new_arr
end
p double_numbers([4, 1, 3])  #=> [8, 2, 6]


#       1. Read about the Ruby `while` loop. Then refactor the code below using `while`. *Warning* - a `while` loop will run forever if you write it incorrectly (unlike a `times` loop or an `each` loop). You can enter Ctrl C in your terminal to force Ruby to quit if it’s stuck in an infinite loop.
# ```
# numbers = [1, 2, 4, 2]
# sum = 0
# index = 0
# numbers.length.times do
#  number = numbers[index]
#  sum = sum + number
#  index = index + 1
# end
# p sum
# ```
numbers = [1, 2, 4, 2]
sum = 0
index = 0
while numbers[index] do
   sum += numbers[index]
   index += 1
end
p sum

#          1. The following code will run 100 times, and each time it will ask the user for their name. The code will break early if the user’s name is Bob.
# ```
# 100.times do
#  puts "What is your name?"  
#  name = gets.chomp
#  if name == "Bob"
#    break
#  end
# end

# puts "Hi, Bob!"
# ```
# Rewrite the code using a while loop so the program will run *forever* unless the user enters a name of Bob.
def bob()  
   name = "Bob"
   while name == "Bob"
      puts "What is your name?"
      name = gets.chomp
   end
   puts "Hi, #{name}!" # puts "Hi, Bob!"
end
# bob()

#             1. Write a method called `average` that takes in an array of numbers and returns the average (the sum divided by the total number of numbers). Write it first using a `while` loop, then write it again using an `each` loop. (Hint - if you’re having issues with missing decimals, you may need the .to_f method…)
# ```
# p average([2, 1, 7, 5])  #=> 3.75
# ```
# ________________

def average(arr, sum=0)
   index = 0
   # sum = 0.to_f
   while arr[index] do
      sum += arr[index]
      index += 1
   end
   sum.to_f / arr.length
end
p average([2, 1, 7, 5])  #=> 3.75

def average(arr, sum=0)
   arr.each do |number|
      sum += number
   end
   sum.to_f / arr.length
end
p average([2, 1, 7, 5])  #=> 3.75

# Week 2
#                1. Read about the Ruby `map` method. Then refactor the code below using `map`.
# ```
# numbers = [1, 2, 4, 2]
# doubled_numbers = []
# numbers.each do |number|
#  doubled_numbers << number * 2
# end
# p doubled_numbers
# ```
numbers = [1, 2, 4, 2]
doubled_numbers = numbers.map { |number| number * 2 }
p doubled_numbers

#                   1. Use the `map` method to convert the array of hashes
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
# ```
items = [
         {id: 1, body: 'foo'},
         {id: 2, body: 'bar'},
         {id: 3, body: 'foobar'}
        ]
p items.map { |item| item[:id] }
#                   2. Use the `map` method with the `to_h` method to convert the array of hashes
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
p fruits.map { |fruit| [fruit["name"], fruit["color"]] }.to_h

#                      1. Write a method called `reverse_a_string` that accepts a string as a parameter and returns the reverse. The one caveat: Don't use the reverse method that already comes with Ruby!
# ```
def reverse_a_string(str)
   new_str = ""
   index = str.length - 1
   str.length.times do
      new_str += str[index]
      index -= 1
   end
   new_str
end
p reverse_a_string("abcde")  #=> "edcba"
# ```

#                         1. Write a method called `find_longest_word`, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.
# ```
def find_longest_word(str)
   sentence_parts_array = str.split(" ")
   longest_part = ""
   sentence_parts_array.each do |part|
      if part.length > longest_part.length
         longest_part = part
      end
   end
   longest_part
end
p find_longest_word("What is the longest word in this phrase?")  #=> "longest"
# ```
# ________________
# Week 3
#                            1. Read about the Ruby `select` method. Then refactor the code below using `select`.
# ```
# numbers = [1, 2, 4, 2]
# even_numbers = []
# numbers.each do |number|
#  if number % 2 == 0
#    even_numbers << number
#  end
# end
# p even_numbers
# ```
numbers = [1, 2, 4, 2]
p numbers.select(&:even?) # or p [1, 2, 4, 2].select(&:even?)

#                               1. Use the `select` method with the following array of hashes
# ```
# movies = [
#  {id: 1, title: "Die Hard", rating: 4.0},
#  {id: 2, title: "Bad Boys", rating: 5.0},
#  {id: 3, title: "The Chamber", rating: 3.0},
#  {id: 4, title: "Fracture", rating: 2.0}
# ]
# ```
# to create a new array of hashes that only contain movies with a rating less than 4.0.
movies = [
          {id: 1, title: "Die Hard", rating: 4.0},
          {id: 2, title: "Bad Boys", rating: 5.0},
          {id: 3, title: "The Chamber", rating: 3.0},
          {id: 4, title: "Fracture", rating: 2.0}
         ]

p flops = movies.select{ |movie| movie[:rating].to_f < 4.0 }.map { |movie| movie }


#                                  1. Use the `select` method combined with the `map` method to convert the array of hashes
# ```
# movies = [
#  {id: 1, title: "Die Hard", rating: 4.0},
#  {id: 2, title: "Bad Boys", rating: 5.0},
#  {id: 3, title: "The Chamber", rating: 3.0},
#  {id: 4, title: "Fracture", rating: 2.0}
# ]
# ```
# into an array of hashes that only contain movie ids of the movies with the letter 'b' in the title (case insensitive). The result should look like:
# ```
# [2, 3]
# ```
movies = [
          {id: 1, title: "Die Hard", rating: 4.0},
          {id: 2, title: "Bad Boys", rating: 5.0},
          {id: 3, title: "The Chamber", rating: 3.0},
          {id: 4, title: "Fracture", rating: 2.0}
         ]
p movies_with_letter_b = movies.select{ |movie| movie[:title].downcase.include?("b") }.map{ |movie| movie[:id] } 

#                                     1. Write a method called `palindrome?` which should accept a string as a parameter and return a boolean that indicates whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar
# ```
def palindrome?(str)
   index = str.length - 1
   reverse_str = ''
   str.length.times do
      reverse_str += str[index]
      index -= 1
   end

   if str == reverse_str
      return true
   else
      return false
   end
end
p palindrome?("racecar")   #=> true
p palindrome?("wazzzzup")  #=> false
# ```

#                                        1. Write a method called `split_array`, with two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter. 
# ```
def split_array(arr, int)
   new_arr = []
   index = 0
   while index < arr.length   
      new_arr << arr[index..index + int - 1]
      index += int
   end
   new_arr
end
p split_array([0, 1, 2, 3, 4, 5], 2)  #=> [[0, 1], [2, 3], [4, 5]]
p split_array([0, 1, 2, 3, 4, 5], 3)  #=> [[0, 1, 2], [3, 4, 5]]
# ```
# ________________
# Week 4
#                                           1. Read about the Ruby `reduce` method. Then refactor the code below using `reduce`.
# ```
# numbers = [1, 2, 4, 2]
# sum = 0
# numbers.each do |number|
#  sum += number
# end
# p sum #=> 9
# ```
numbers = [1, 2, 4, 2]
p numbers.reduce(:+)

#                                              1. Write a method called `scrabble_score` which should accept a string as a parameter and return the amount of points it is worth in Scrabble. You can use the following hash to determine how many points each letter is worth:
# ```
# points = {'a'=> 1, 'b'=> 3, 'c'=> 3, 'd'=> 2, 'e'=> 1, 'f'=> 4, 'g'=> 2, 'h'=> 4, 'i'=> 1, 'j'=> 8, 'k'=> 5, 'l'=> 1, 'm'=> 3, 'n'=> 1, 'o'=> 1, 'p'=> 3, 'q'=> 10, 'r'=> 1, 's'=> 1, 't'=> 1, 'u'=> 1, 'v'=> 4, 'w'=> 4, 'x'=> 8, 'y'=> 4, 'z'=> 10}
# ```
# Use the `reduce` method to perform the computation in your scrabble_score method. The code should work as follows:
# ```
def scrabble_score(str)
   points = {'a'=> 1, 'b'=> 3, 'c'=> 3, 'd'=> 2, 'e'=> 1, 'f'=> 4, 'g'=> 2, 'h'=> 4, 'i'=> 1, 'j'=> 8, 'k'=> 5, 'l'=> 1, 'm'=> 3, 'n'=> 1, 'o'=> 1, 'p'=> 3, 'q'=> 10, 'r'=> 1, 's'=> 1, 't'=> 1, 'u'=> 1, 'v'=> 4, 'w'=> 4, 'x'=> 8, 'y'=> 4, 'z'=> 10}
   str.split('').reduce(0) { |score, current_letter| score + points[current_letter] }
end
p scrabble_score("scholar")  #=> 12
p scrabble_score("scholars")  #=> 13

# ```

#                                              2. Use the methods `map`, `select`, and `reduce` with the following array of hashes: 
# ```
items = [
         {title: "NoDBA", words: 561, tags: ["nosql", "people", "orm"], type: :book},
         {title: "Infodeck", words: 1145, tags: ["nosql", "writing"], type: :book},
         {title: "OrmHate", words: 1718, tags: ["nosql", "orm"], type: :book},
         {title: "ruby", words: 1313, tags: ["ruby"], type: :article},
         {title: "DDD_Aggregate", words: 482, tags: ["nosql", "ddd"], type: :book}
        ]
# ```
# and calculate the total amount of words for all items of type `:book`. The result should be
# ```
p books = items.select{ |item| item[:type] == :book }.map{ |item| item[:words] }.reduce(0){ |total,current| total + current } # 3906
# ```



#                                              3. Write a method called `mutation?`, which will accept two strings as a parameter and return true if all the letters from the second string are contained within the first string, and false otherwise.
# ```
def mutation?(str1,str2) # Note: solution will not currently account for repeat letters (e.g. str1 = burly, str2 = rubby => will still return true)
   str1_array = str1.split('')
   str2_array = str2.split('')

   str1_hash = {}

   str1_array.each do |letter|
      if str1_hash[letter]
         str1_hash[letter] += 1
      else
         str1_hash[letter] = 0
      end
   end

   i = 0
   str2_array.length.times do
      if str1_hash[str2_array[i]]
         i += 1
      else
         return false
      end
   end

   true
end
p mutation?("burly", "ruby")    #=> true
p mutation?("burly", "python")  #=> false
# ```


#                                                 1. Write a method called `sum_of_range`, which will accept an array containing two numbers, and return the sum of all of the whole numbers within the range of those numbers, inclusive.
# ```

def sum_of_range(arr)
   arr = arr.sort
   first = arr[0]
   last = arr[1]

   sum = 0
   while first <= last do
      sum += first
      first += 1      
   end
   sum
end

p sum_of_range([1, 4])  #=> 10
p sum_of_range([4, 1])  #=> 10
# ```
# ________________
# Week 5
#                                                    1. Read about the Ruby `sort` method. Then sort the following array of hashes by age. (Note - do not use the `sort_by` method for this exercise)
# ```
people = [
 {"name" => "Saron", "age" => 34},
 {"name" => "Majora", "age" => 28},
 {"name" => "Danilo", "age" => 45}
]
p people.sort_by {|k| k["age"] }
# ```



#                                                       1. Use the `sort` method to sort the array of hashes first by age, then by name.
# ```
# people = [
#  {name: "bob", age: 15, gender: "male"},
#  {name: "alice", age: 25, gender: "female"},
#  {name: "bob", age: 56, gender: "male"},
#  {name: "dave", age: 45, gender: "male"},
#  {name: "alice", age: 56, gender: "female"},
#  {name: "adam", age: 15, gender: "male"}
# ]
# ```
# The result should be:
# ```
# [
#  {:name=>"adam", :age=>15, :gender=>"male"},
#  {:name=>"bob", :age=>15, :gender=>"male"},
#  {:name=>"alice", :age=>25, :gender=>"female"},
#  {:name=>"dave", :age=>45, :gender=>"male"},
#  {:name=>"alice", :age=>56, :gender=>"female"},
#  {:name=>"bob", :age=>56, :gender=>"male"}
# ]
# ```


#                                                          1. Use the `sort` and `map` methods to convert the array of hashes
# ```
# movies = [
#  {id: 1, title: "Die Hard", rating: 4.0},
#  {id: 2, title: "Bad Boys", rating: 5.0},
#  {id: 3, title: "The Chamber", rating: 3.0},
#  {id: 4, title: "Fracture", rating: 2.0}
# ]
# ```
# into an array of titles sorted by their ratings highest to lowest. The result should be:
# ```
# ["Bad Boys", "Die Hard", "The Chamber", "Fracture"]
# ```


#                                                             1. Find the needle by writing one line of code. As an example, if `haystack = [:hay, :needle, :hay]`, you'd pull it out with: `haystack[1]`
# ```
haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}
# p haystack[:hay][3][:hay][:hay][1][:hay][2]
# ```


#                                                                1. Return the missing letter from a given range of letters passed into the method as a string. If there is no missing letter, the method should return nil. bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.
# ```
def find_missing_letter(str)
   first = str[0]
   last = str[-1]

end
# p find_missing_letter("opqrsuv")  #=> "t"
# p find_missing_letter("xyz")      #=> nil
# ```


# ________________
# Week 6
#                                                                   1. Read about the Ruby ternary operator. Then refactor the code below using a ternary operator.
# ```
# x = 74
# if x > 10
#  result = "big number"
# else
#  result = "small number"
# end
# puts result
# ```


#                                                                      1. Use the ternary operator with the `map` method to convert the array of names
# ```
# sentences = ["hello", "old friend", "today", "mac and cheese"]
# ```
# into a new array of sentences where the first letter is capitalized only if there is more than one word in the sentence. The result should be:
# ```
# ["hello", "Old friend", "today", "Mac and cheese"]
# ```


#                                                                         1. Use the ternary operator with the `reduce` method to find the minimum number in an array of numbers. (Note - do not use the `min` method for this exercise)


#                                                                         1. Implement the `is_prime?` method which takes in a number and returns true if the number is prime and false if it is not. (A prime number is a number that is only divisible by itself and the number 1.)
# ```
# p is_prime?(10)   #=> false
# p is_prime?(11)   #=> true
# p is_prime?(12)   #=> false
# ```


#                                                                            1. Write a method called `find_the_most_letter_a` which takes in an array of strings and returns the string with the most a’s.
# ```
# p find_the_most_letter_a(["alphabet", "aardvark", "anarchy"])  #=> "aardvark"
# ```
# ________________
# Week 7
#                                                                               1. Read about regular expressions. Then use the `gsub` method to replace all the numerical digits in the following string with an underscore.
# ```
# address = "665 Clinton Lane, Wilkes Barre, PA 18702"
# ```
# The result should be:
# ```
# "___ Clinton Lane, Wilkes Barre, PA _____"
# ```

#                                                                               2. Use the `scan` method with a regular expression to find every word in the following sentence that has 4 letters and starts with the letter "l" and ends with the letter "e".
# ```
# sentence = "You can live like a king but make sure it isn't a lie."
# ```
# The result should be:
# ```
# ["live", "like"]
# ```


#                                                                                  1. Use the `gsub` method with a regular expression to replace every word in the following sentence that starts with the letter "l" with the word "fake".
# ```
# sentence = "You can live like a king but make sure it isn't a lie."
# ```
# The result should be:
# ```
# "You can fake fake a king but make sure it isn't a fake."
# ```
 
#                                                                                     1. Implement the highest_prime_number_under method below. It should accept a number as an argument and return the highest prime number under that number. For example, the highest prime number under 10 is 7. (This is a tough problem!)
# ```
# p highest_prime_number_under(10)  #=> 7
# p highest_prime_number_under(11)  #=> 7
# p highest_prime_number_under(12)  #=> 11
# ```

#                                                                                     2. Write a method called `is_balanced?` that takes a string of brackets and checks whether they are balanced or not. (This is a tough problem!)
# ```
# p is_balanced?("{[()]}") #=> true
# p is_balanced?("{[([)]]}") #=> false
# ```


# ________________
# Week 8

#                                                                                        1. Start with the array:
# ```
# var array = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]];
# ```
# Use a JavaScript loop within a loop to take each of those letters and put them into a brand new one dimensional array. The result should be:
# ```
# ["a", "b", "z", "c", "d", "e", "f", "g", "h", "i", "j"]
# ```

#                                                                                        2. Start with the array of arrays
# ```
# var meals = [["breakfast", "pancakes with maple syrup"], ["lunch", "BLT"], ["dinner", "salmon with lemon rice"]];
# ```
# Each inner array’s first element describes the meal of the day (e.g. "breakfast"), and the second element in each inner array describes the particular meal (e.g. “pancakes with maple syrup”). Use a JavaScript loop to create an object called `meals_object`. The keys should be the type of meal, and the values the specific type. The result should be:
# ```
# {breakfast: "pancakes with maple syrup", lunch: "BLT", dinner: "salmon with lemon rice"}
# ```

#                                                                                        3. Write a function called `findLongestWord`, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.
# ```
# console.log(findLongestWord("What is the longest word in this phrase?"));  // "longest"
# ```


#                                                                                           1. Write a function called `mutation`, which will accept two strings as a parameter and return true if all the letters from the second string are contained within the first string, and false otherwise.
# ```
# console.log(mutation("burly", "ruby"));    // true
# console.log(mutation("burly", "python"));  // false
# ```

#                                                                                           2. Write a function called `findTheMostLetterA` which takes in an array of strings and returns the string with the most a’s.
# ```
# console.log(findTheMostLetterA(["alphabet", "aardvark", "anarchy"]));  // "aardvark"
# ```
# ________________
# Week 9
#                                                                                              1. Read about the JavaScript `map` method. Then refactor the code below using `map`.
# ```
# var numbers = [1, 2, 4, 2];
# var doubledNumbers = [];
# for (var i = 0; i < numbers.length; i++) {
#  doubledNumbers.push(numbers[i] * 2);
# }
# console.log(doubledNumbers);
# ```


#                                                                                                 1. Use the `map` method to convert the array of objects
# ```
# var items = [
#  {id: 1, body: 'foo'},
#  {id: 2, body: 'bar'},
#  {id: 3, body: 'foobar'}
# ];
# ```
# into an array that only contains the ids. The result should look like:
# ```
# [1, 2, 3]
# ```

#                                                                                                 2. Read about the JavaScript `filter` method. Then refactor the code below using `filter`.
# ```
# var numbers = [1, 2, 4, 2];
# var evenNumbers = [];
# for (var i = 0; i < numbers.length; i++) {
#  if (numbers[i] % 2 === 0) {
#    evenNumbers.push(numbers[i]);
#  }
# }
# console.log(evenNumbers);
# ```
 
#                                                                                                    1. Use the `filter` method combined with the `map` method to convert the array of objects
# ```
# var movies = [
#  {id: 1, title: "Die Hard", rating: 4.0},
#  {id: 2, title: "Bad Boys", rating: 5.0},
#  {id: 3, title: "The Chamber", rating: 3.0},
#  {id: 4, title: "Fracture", rating: 2.0}
# ];
# ```
# into an array of objects that only contain movie ids of the movies with the letter 'b' in the title (case insensitive). The result should look like:
# ```
# [2, 3]
# ```


#                                                                                                       1. Use the `filter` method with the following array of objects
# ```
# var movies = [
#  {id: 1, title: "Die Hard", rating: 4.0},
#  {id: 2, title: "Bad Boys", rating: 5.0},
#  {id: 3, title: "The Chamber", rating: 3.0},
#  {id: 4, title: "Fracture", rating: 2.0}
# ];
# ```
# to create a new array of objects that only contain movies with a rating less than 4.0.
# ________________
# Week 10
#                                                                                                          1. Read about the JavaScript `reduce` method. Then refactor the code below using `reduce`.
# ```
# var numbers = [1, 2, 4, 2];
# var sum = 0;
# for (var i = 0; i < numbers.length; i++) {
#  sum += numbers[i];
# }
# console.log(sum);
# ```


#                                                                                                             1. Use the `reduce` method to convert the array of objects
# ```
# var fruits = [
#  {name: "apple", color: "red"},
#  {name: "banana", color: "yellow"},
#  {name: "grape", color: "purple"}
# ];
# ```
# into a single object where the keys are the names and the values are the colors. The result should look like:
# ```
# {apple: "red", banana: "yellow", grape: "purple"}
# ```


#                                                                                                                1. Read about the JavaScript `sort` method. Then sort the following array of objects by age.
# ```
# people = [
#  {name: "Saron", age: 34},
#  {name: "Majora", age: 28},
#  {name: "Danilo", age: 45}
# ]
# ```


#                                                                                                                   1. Use the methods `map` and `filter` with the following array of objects:
# ```
# var doctors = [
#     { number: 1,  actor: "William Hartnell",      begin: 1963, end: 1966 },
#     { number: 2,  actor: "Patrick Troughton",     begin: 1966, end: 1969 },
#     { number: 3,  actor: "Jon Pertwee",           begin: 1970, end: 1974 },
#     { number: 4,  actor: "Tom Baker",             begin: 1974, end: 1981 },
#     { number: 5,  actor: "Peter Davison",         begin: 1982, end: 1984 },
#     { number: 6,  actor: "Colin Baker",           begin: 1984, end: 1986 },
#     { number: 7,  actor: "Sylvester McCoy",       begin: 1987, end: 1989 },
#     { number: 8,  actor: "Paul McGann",           begin: 1996, end: 1996 },
#     { number: 9,  actor: "Christopher Eccleston", begin: 2005, end: 2005 },
#     { number: 10, actor: "David Tennant",         begin: 2005, end: 2010 },
#     { number: 11, actor: "Matt Smith",            begin: 2010, end: 2013 },
#     { number: 12, actor: "Peter Capaldi",         begin: 2013, end: 2017 }    
# ];
# ```
# and reshape the data for all doctors starting from the year 2000. The result should be:
# ```
# [
#     {doctorNumber: "#9",  playedBy: "Christopher Eccleston", yearsPlayed: 1},
#     {doctorNumber: "#10", playedBy: "David Tennant",         yearsPlayed: 6},
#     {doctorNumber: "#11", playedBy: "Matt Smith",            yearsPlayed: 4},
#     {doctorNumber: "#12", playedBy: "Peter Capaldi",         yearsPlayed: 5}
# ] 
# ```

#                                                                                                                      1. Use the methods `map`, `filter`, and `reduce` with the following array of objects: 
# ```
# var items = [
#  {title: "NoDBA", words: 561, tags: ["nosql", "people", "orm"], type: "book"},
#  {title: "Infodeck", words: 1145, tags: ["nosql", "writing"], type: "book"},
#  {title: "OrmHate", words: 1718, tags: ["nosql", "orm"], type: "book"},
#  {title: "ruby", words: 1313, tags: ["ruby"], type: "article"},
#  {title: "DDD_Aggregate", words: 482, tags: ["nosql", "ddd"], type: "book"}
# ];
# ```
# and calculate the total amount of words for all items of type `"book"`. The result should be
# ```
# 3906
# ```
# ________________


# Week 11
#                                                                                                                         1. Given an array with every element repeated twice except one, find the unique element. For example if given array is [1, 1, 2, 2, 3, 4, 4, 5, 5] then your program should return 3.


#                                                                                                                         1. Given an array of integers, find the first repeating element in it. For example if given array is [10, 5, 3, 4, 3, 5, 6] then your program should return 3. (This is a tough problem!)


#                                                                                                                         1. Find kth smallest element in unsorted array. For example if given array is [1, 7, 30, 9, 14] and k = 2 then you need to find the 2nd smallest number in the array, which is 7. (This is a tough problem!)


#                                                                                                                         1. Given an array of unsorted integers, find the largest two numbers. First try to solve the problem by sorting the array. Then try to solve the problem without sorting the array. (This is a tough problem!)


#                                                                                                                         1. Given an array of integers and a number, you need to write a program to find all the pairs in array whose sum is equal to the given number. Remember, the array may contain both positive and negative numbers, so your solution should consider that. (This is a tough problem!)


# ________________
# OOP
#                                                                                                                         1. Create a person class with readable first_name and last_name attributes and a method to calculate its full_name.
# ```
# person = Person.new("Peter", "Jang")
# p person.first_name  #=> "Peter"
# p person.last_name #=> "Jang"
# p person.full_name #=> "Peter Jang"
# ```


#                                                                                                                            1. Create a Rectangle class with readable width and height attributes and a method to calculate its area.
# ```
# rectangle = Rectangle.new(10, 30)
# p rectangle.width  #=> 10
# p rectangle.height  #=> 30
# p rectangle.area  #=> 300
# ```


# More practice problems: https://edabit.com/explore