def prime?(num)
  p num
  test_num = 2
  if num == 2
    return true
  end

  while test_num < num
    if num % test_num == 0
      return false
    end
    test_num += 1
  end

  true
end

p prime?(2)
p prime?(3)
p prime?(4)
p prime?(5)
p prime?(6)
p prime?(7)
p prime?(8)
p prime?(9)
p prime?(10)
p prime?(11)
p prime?(12)
p prime?(13)