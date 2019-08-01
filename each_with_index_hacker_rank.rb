def skip_animals(animals, skip)
  # Your code here
  new_array = []
  
  index = 0
  while index + skip < animals.length
    new_array << "#{index + skip}:#{animals[index + skip]}"
    index += 1
  end
  new_array
end

p skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)