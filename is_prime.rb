def produce_primes(total)
  # n = 2
  # primes = []

  # until primes.length == total
  #   i = 2
  #   count = 0
  #   until i > n
  #     if n % i == 0
  #       count += 1 
  #     end
  #     i += 1
  #   end
  #   if count < 2
  #     primes << n
  #   end
  #   n += 1
  # end
  # return primes

  n = 2
  primes = [2]

  until primes.length == total
    i = 2
    count = 0
    until i > n

  return primes
end

p produce_primes(7)


def prime?(test_num)


end






  # if test_num < 2
  #   return false
  # elsif test_num == 2
  #   return true
  # end

  # primes = [2]
  # # test_num = 3

  # counter = 3
  # while primes.length < test_num

  #   if counter % primes[index] == 0
  #     counter += 1




  #   primes.each do |number|
  #     if i % number == 0
  #       break
  #     else
  #       primes << i
  #     end
  #   end
  # end

  # p primes


  # primes.each do |number|
  #   if test_num % number == 0 && test_num > 2
  #     return false
  #   end
  # end

  # return true

  # # while test_num < num
  # #   p primes
  # #     index = 0
  # #     while index < primes.length
  # #         if test_num % primes[index] == 0
  # #             return false
  # #         end
  # #         test_num += 1
  # #         index += 1  
  # #     end
  # #     primes << test_num
  # # end      
  # # return true
# end

p prime?(2)

# primes_array = []
# non_primes_array = []

# test_num = 0
# max_test_num = 30
# until test_num == max_test_num
#   # puts "#{test_num} prime? #{prime?(test_num)}"
#   prime?(test_num) ? primes_array << test_num : non_primes_array << test_num
#   test_num += 1
# end

# p primes_array