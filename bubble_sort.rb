def bubble_sort(array)
  temp = 0
  index = 0
  count = 0

  array.length.times do
    index = 0
    array.length.times do
      if index != array.length - 1
        if array[index + 1] < array[index]
          temp = array[index]
          array[index] = array[index + 1]
          array[index + 1] = temp
        end
        index += 1
      end
     count += 1
    end
    
  end
  puts "Loop ran #{count} times"
  puts "N = #{array.length}"
  puts "Big O Notation: O(N * N)"
  array
end

array = [6,3,2,7,1,1,7,9,0,6]

p bubble_sort(array)
p array.sort
