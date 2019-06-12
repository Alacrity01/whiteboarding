def staircase(n)
  stairs = '#'
  n.times do
    puts "#{stairs}".rjust(n) 
    stairs += '#'
  end
end

staircase(6)