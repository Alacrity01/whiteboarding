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


  # Given a string, return true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)

  # Input: “racecar”
  # Output: true

  # Input: “baloney”
  # Output: false
  def palindrome(word)
    i = 0
    j = word.length - 1

    word.length.times do
      if word[i] == word[j]
        i += 1
        j -= 1
      else
        return false
      end
    end

    return true  
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



  # Given 3 x 3 matrix representing a Tic Tac Toe board, determine who the winner is. Return "X" or "O", or "C" if it's a cats game.

  # Input: [
  # [" ", "X", "O"],
  # ["X", "O", " "],
  # ["O", "X", " "]
  # ]

  # Output: "O"
  def tic_tac_toe(matrix)
    if matrix[0][0] == matrix[0][1] && matrix[0][1] == matrix[0][2] && matrix[0][0] != " " # row win
      return matrix[0][0]
    elsif matrix[1][0] == matrix[1][1] && matrix[1][1] == matrix[1][2] && matrix[1][0] != " " # row win
      return matrix[1][0]
    elsif matrix[2][0] == matrix[2][1] && matrix[2][1] == matrix[2][2] && matrix[2][0] != " " # row win
      return matrix[2][0]
    elsif matrix[0][0] == matrix[1][1] && matrix[1][1] == matrix[2][2] && matrix[0][0] != " " # diagonal win
      return matrix[0][0]
    elsif matrix[2][0] == matrix[1][1] && matrix[1][1] == matrix[0][2] && matrix[2][0] != " " # diagonal win
      return matrix[2][0]
    elsif matrix[0][0] == matrix[1][0] && matrix[1][0] == matrix[2][0] && matrix[0][0] != " " # column win
      return matrix[0][0]
    elsif matrix[0][1] == matrix[1][1] && matrix[1][1] == matrix[2][1] && matrix[0][1] != " " # column win
      return matrix[0][1]
    elsif matrix[0][2] == matrix[1][2] && matrix[1][2] == matrix[2][2] && matrix[0][2] != " " # column win
      return matrix[0][2]
    else
      return "C"
    end
  end

  # Write a function that returns whether a given number is prime
  def is_prime(num)
    primes = [2]
    counter = 3
    
    until counter == num
      index = 0
      primes.each_with_index do |prime, index|
        if counter % prime != 0
          primes << counter
        end
        index += 1
      end
        counter += 1
    end  

    primes.each do |prime|
      if num % prime == 0
        return "#{num} is not prime"
      end
    end

    return "#{num} is prime"
  end

  # Write a function that returns n prime numbers
  def n_primes(n)

  end


  # The Collatz Conjecture or 3x+1 problem can be summarized as follows:

  # Take any positive integer n. If n is even, divide n by 2 to get n / 2. If n is odd, multiply n by 3 and add 1 to get 3n + 1. Repeat the process indefinitely. The conjecture states that no matter which number you start with, you will always reach 1 eventually.

  # Given a number n, return the number of steps required to reach 1.

  # Examples
  # Starting with n = 12, the steps would be as follows:

  # 12
  # 6
  # 3
  # 10
  # 5
  # 16
  # 8
  # 4
  # 2
  # 1

  # Resulting in 9 steps. So for input n = 12, the return value would be 9.
  def collatz(n)
    count = 0

    until n == 1
      if n % 2 == 0
        n /= 2
        count += 1
      else
        n *= 3
        n += 1
        count += 1
      end
    end

    return count
  end


  # Write a function that prints out every number from 1 to N, with the following exceptions:

  # If the number is divisible by 3, print out "FIZZ".
  # If the number is divisible by 5, print out "BUZZ".
  # If the number is divisible by both 3 and 5, print out "FIZZBUZZ".
  def fizzbuzz(n)
    count = 0
    until count == n
      count += 1
      if count % 15 == 0
        p "FIZZBUZZ"
      elsif count % 5 == 0
        p "BUZZ"
      elsif count % 3 == 0
        p "FIZZ"
      else
        p count
      end
    end
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
# p algorithm.rna_transcription('ACGTGGTCTTAA')
# p algorithm.tic_tac_toe([[" ", "X", "O"],["X", "O", " "],["O", "X", " "]])


# p algorithm.is_prime(3)
# p algorithm.is_prime(4)
# p algorithm.is_prime(5)
# p algorithm.is_prime(6)
# p algorithm.is_prime(7)
# p algorithm.is_prime(8)
# p algorithm.is_prime(9)
# p algorithm.is_prime(11)
# p algorithm.is_prime(12)
# p algorithm.is_prime(13)
# p algorithm.is_prime(14)
# p algorithm.is_prime(15)
# p algorithm.is_prime(16)
# p algorithm.is_prime(17)

# p algorithm.n_primes(1)
# p algorithm.n_primes(2)
# p algorithm.n_primes(3)
# p algorithm.n_primes(4)
# p algorithm.n_primes(5)
# p algorithm.n_primes(6)
# p algorithm.n_primes(7)
# p algorithm.n_primes(8)
# p algorithm.n_primes(9)
# p algorithm.n_primes(10)

# p algorithm.collatz(12) # expect 9

# algorithm.fizzbuzz(100)

p algorithm.palindrome("racecar") # expect true
p algorithm.palindrome("boloney") # expect false


