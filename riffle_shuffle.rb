def riffle_shuffle(array_1, array_2)
  shuffled_array = []
  index = 0
  array_1.length.times do
    shuffled_array << array_1[index]
    shuffled_array << array_2[index]
    index += 1
  end

  shuffled_array
end

array_1 = [1,3,5,7,9]
array_2 = [2,4,6,8,10]

p riffle_shuffle(array_1, array_2)
p array_1.zip(array_2).flatten