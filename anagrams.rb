# Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

# Do not use any built-in sort methods.

# Input: 'silent', 'listen'
# Output: true

# Input: 'frog', 'bear'
# Output: false

def anagram(str_1, str_2)
  i = 0
  hash_1 = {}
  hash_2 = {}
  str_1.length.times do
    if hash_1[str_1[i]]
      hash_1[str_1[i]] += 1
    else
      hash_1[str_1[i]] = 1
    end
    i += 1
  end

  i = 0
  str_2.length.times do
    if hash_2[str_2[i]]
      hash_2[str_2[i]] += 1
    else
      hash_2[str_2[i]] = 1
    end
    i += 1
  end

  p hash_1
  p hash_2

  if hash_1 == hash_2
    return true
  else
    return false
  end
end

p anagram('silent', 'listen')
p anagram('frog', 'bear')