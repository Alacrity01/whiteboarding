# Given a hash, return a flat array containing all the hash’s keys and values.

# Input: {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
# Output: ["a", 1, "b", 2, "c", 3, "d", 4]

def flatten_hash(hash)
  arr = []

  hash.each do |k, v|
    arr << k
    arr << v   
  end

  arr
end

p flatten_hash({"a" => 1, "b" => 2, "c" => 3, "d" => 4})

# Time to solve: appoximately 1 minute (near typing speed)