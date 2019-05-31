def manual_insertion_sort(array)
  n = array.length
  index = 0
  min = array[index]

  #p min
  #sorted_array = []

  n.times do
    index = 0
    n.times do
      if array[index] < min
        min = array[index]
      end
     # array = array -[min]
     # p array
      index += 1
      #n -= 1
      
    end
  #end
    p min
    array[array.index(min)] = nil
    p array[8]
    array << min
  #return sorted_array
  end
end



p manual_insertion_sort([19,13,2,31,6,42,24,7,1,17])