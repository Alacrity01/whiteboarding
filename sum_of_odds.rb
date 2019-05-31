def sum_of_odd(array)
  sum = 0
  array.each do |number|
    if number % 2 > 0
      sum += number
    end
  end

  p sum
end

array = [4,3,6,1,6,2,7,7,1,0,5]

sum_of_odd(array)