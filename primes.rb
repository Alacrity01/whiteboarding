def primes(total)
  n = 2
  array = []

  until array.length == total
    i = 2
    count = 0
    until i > n
      if n % i == 0
        count += 1 
      end
      i += 1
    end
    if count < 2
      array << n
    end
    n += 1
  end
  return array
end

p primes(4)
p primes(5)
p primes(6)
p primes(7)
p primes(8)

