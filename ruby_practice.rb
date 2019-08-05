# 1 - Refactor

# original
# numbers = [1, 2, 4, 2]
# sum = 0
# index = 0
# numbers.length.times do
#  number = numbers[index]
#  sum = sum + number
#  index = index + 1
# end
# p sum

# refactored
numbers = [1, 2, 4, 2]
sum = 0
numbers.each {|number| sum += number} # single line syntax
# numbers.each do |number| # multi line syntax
#   sum += number
# end

p sum
