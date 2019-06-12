def min_max_sum(arr)
  min_sum = 0
  max_sum = 0

  answer_arr = []
  
  min = arr[0]
  max = 0

  arr.each do |number|
    if number > max
      max = number
    end
    min_sum += number
  end
  min_sum -= max
  
  arr.each do |number|
    if number < min
      min = number
    end
    max_sum += number
  end
  max_sum -= min

  puts "#{min_sum} #{max_sum}"
end

arr = [1, 2, 3, 4, 5]

min_max_sum(arr)
