# Two kangaroos start at different positions, x1 and x2, and x1 < x2.
# Each kangaroo jumps distance v1 and v2, respectively.
# Write a method that prints returns "YES" if their positions will ever be equal after an equal number of jumps, or "NO" if they will not.

def kangaroo(x1, v1, x2, v2) 
  d = x2 - x1
  while x1 <= x2
    p "#{x1}, #{x2}"
    if x1 == x2
      return "YES"
    end
    x1 += v1
    x2 += v2
    if x2 - x1 == d || x2 - x1 > d
      return "NO"
    end
  end
  return "NO"
end

p kangaroo(0,3,4,2)