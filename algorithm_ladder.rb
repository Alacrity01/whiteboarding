# https://trello.com/b/smxNsfu6/algorithm-ladder

class AlgorithmLadder
  
  # *****************ARRAYS*****************
  # Return the sum of all numbers in a given array.
  # Input: [1, 2, 3, 4]
  # Output: 10
  def sum_array(arr)
    sum = 0
    arr.each do |number|
      sum += number
    end
    sum
  end


  # Given an array of numbers, return a new array that contains all numbers from the original array that are less than 100.
  # Input: [99, 101, 88, 4, 2000, 50]
  # Output: [99, 88, 4, 50]
  def less_than_100(arr)
    new_arr = []
    arr.each do |number|
      if number < 100
        new_arr << number
      end
    end
    new_arr
  end

  # Given an array of numbers, return a new array whose values are the original array’s value doubled.
  # Input: [4, 2, 5, 99, -4]
  # Output: [8, 4, 10, 198, -8]
  def double_arr(arr)
    new_arr = []
    arr.each do |number|
      new_arr << number * 2
    end
    new_arr
  end


  # Return the greatest value from an array of numbers.
  # Input: [5, 17, -4, 20, 12]
  # Output: 20
  def max_value(arr)
    max = arr[0]
    arr.each do |number|
      if number > max
        max = number
      end
    end
    max
  end

  # Given an array of numbers, return the product of all the numbers.
  # Input: [1, 2, 3, 4]
  # Output: 24 (1 2 3 * 4)

  def product_arr(arr)
    product = 1
    arr.each do |number|
      product *= number
    end
    product
  end

  # Given an array, return a new array that contains the original array’s values in reverse.
  # Input: [1, 2, 3, 4, 5]
  # Output: [5, 4, 3, 2, 1]
  def reverse_arr(arr)
    new_arr = []
    index = arr.length - 1
    until index < 0
      new_arr << arr[index]
      index -= 1
    end
    new_arr
  end

  # Given an array of numbers, return a new array in which only select numbers from the original array are included, based on the following details:

  # The new array should contain the first number from the original array. The next number that should be included depends on what the first number is. The first number dictates how many spaces to the right the computer should move to pick the next number. For example, if the first number is 2, then the next number that the computer should select would be two spaces to the right of this one. If the next number is 4, then the next number after that is the one four spaces to the right of this 4. And so on and so forth until the end of the array is reached.
  # Input:
  # [2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2]
  # Output:
  # [2, 3, 1, 2, 2, 1, 5, 2, 2]
  def skip(arr)
    skip_index = arr[0]
    new_arr = [arr[0]]
    while skip_index < arr.length
      new_arr << arr[skip_index]
      skip_index += arr[skip_index]
    end
    new_arr
  end

  # *****************ARRAYS*****************

  # *****************STRINGS*****************

  # Return the reverse of a given string.
  # Input: “abcde”
  # Output: “edcba”
  def reverse_string(str)
    new_str = ""
    index = str.length - 1
    str.length.times do
      new_str += str[index]
      index -= 1
    end
    new_str
  end

  # Given a string, return true if the “$” character is contained within the string or false if it is not.
  # Input: “i hate $ but i love money i know i know im crazy”
  # Output: true
  # Input: “abcdefghijklmnopqrstuvwxyz”
  # Output: false
  def money(str)
    index = 0
    str.length.times do 
      if str[index] == "$"
        return true
      end
      index += 1
    end
    false
  end


  # Given a string, return a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)
  # Input: “hello, how are your porcupines today?”
  # Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”
  def switchcase(str)
    str = str.downcase
    index = 1
    while index < str.length
      str[index] = str[index].upcase
      index += 2
    end
    str
  end

  # Given a string, find the first occurence of two duplicate characters in a row, and return the duplicated character.
  # Input: “abcdefghhijkkloooop”
  # Output: “h”
  def find_duplicate(str)
    i = 0

    str.length.times do
      j = i + 1
      str.length.times do
        if str[i] == str[j]
          return str[i]
        end
        j += 1
      end
      i += 1
    end
  end
  # *****************STRINGS*****************


  # *****************HASHES*****************

  # Given a string, find the most commonly occurring letter.

  # Input: “peter piper picked a peck of pickled peppers”
  # Output: “p”
  def repeats(str)
    i = 0
    letter_count = {}
    most_common_letter = ""
    most_common_count = 0

    while i < str.length
      if letter_count[str[i]]
        letter_count[str[i]] += 1
      else 
        letter_count[str[i]] = 1
      end

      if letter_count[str[i]] > most_common_count
        most_common_count = letter_count[str[i]]
        most_common_letter = str[i]
      end

      i += 1
    end
    
    most_common_letter
  end

  # *****************HASHES*****************

# You are given two parameters, an array and a number. Return a hash whose keys are each of the values from the array parameter, and whose values are the number parameter.

# Input:

# First argument: ["a", "e", "i", "o", "u"]
# Second argument: 1

# Output:

# {
# 'a' => 1,
# 'e' => 1,
# 'i' => 1,
# 'o' => 1,
# 'u' => 1
# }

  def basic_hash(arr, num)
    hash = Hash.new
    arr.each do |element|
      hash[element] = num
    end
    hash
  end

# Given a hash, return a flat array containing all the hash’s keys and values.

# Input: {“a” => 1, “b” => 2, “c” => 3, “d” => 4}
# Output: [“a”, 1, “b”, 2, “c”, 3, “d”, 4]
  def flat_array(hash)
    arr = []
    hash.each do |k, v|
      arr << k
      arr << v
    end

    arr
  end

  # Given a hash, create a new hash that has the keys and values switched.

  # Input: {"a" => 1, "b" => 2, "c" => 3}
  # Output: {1 => "a", 2 => "b", 3 => "c"}
  def flip_hash(hash)
    flipped_hash = {}

    hash.each do |k, v|
      flipped_hash[v] = k
    end
    flipped_hash
  end

  # Given a DNA strand, return its RNA complement (per RNA transcription).
  # Both DNA and RNA strands are a sequence of nucleotides.
  # The four nucleotides found in DNA are adenine (A), cytosine (C), guanine (G) and thymine (T).

  # The four nucleotides found in RNA are adenine (A), cytosine (C), guanine (G) and uracil (U).

  # Given a DNA strand, its transcribed RNA strand is formed by replacing each nucleotide with its complement, as follows:

  # G -> C
  # C -> G
  # T -> A
  # A -> U

  # So based on all this, here's a sample input/output:

  # Input: 'ACGTGGTCTTAA'
  # Output: 'UGCACCAGAAUU'

  def rna_transcription(dna_str)
    decrypt_hash = {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}
    rna_str = ""
    index = 0

    dna_str.length.times do
      rna_str += decrypt_hash[dna_str[index]]
      index += 1
    end

    rna_str    
  end

end



algorithm = AlgorithmLadder.new
# p algorithm.sum_array([1, 2, 3, 4])
# p algorithm.less_than_100([99, 101, 88, 4, 2000, 50])
# p algorithm.double_arr([4, 2, 5, 99, -4])
# p algorithm.max_value([5, 17, -4, 20, 12])
# p algorithm.product_arr([1, 2, 3, 4])
# p algorithm.reverse_arr([1, 2, 3, 4, 5])
# p algorithm.skip([2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2])
# p algorithm.reverse_string('abcde')
# p algorithm.money('i hate $ but i love money i know i know im crazy')
# p algorithm.money('abcdefghijklmnopqrstuvwxyz')
# p algorithm.switchcase('hello, how are your porcupines today?')
# p algorithm.find_duplicate('abcdefghhijkkloooop')
# p algorithm.repeats('peter piper picked a peck of pickled peppers')
# p algorithm.basic_hash(["a", "e", "i", "o", "u"], 1)
# p algorithm.flat_array({'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4})
# p algorithm.flip_hash({'a' => 1, 'b' => 2, 'c' => 3})
p algorithm.rna_transcription('ACGTGGTCTTAA')