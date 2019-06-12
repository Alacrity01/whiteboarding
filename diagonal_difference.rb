def diagonal_difference(arr)
    sum = 0
    diagonal_1 = 0
    diagonal_2 = 0
    i = 0
    j = 0
    arr.length.times do
        #p arr[i][j]
        diagonal_1 += arr[i][j]
        i += 1
        j += 1
    end

    i = 0
    j = arr.length - 1
    arr.length.times do
        diagonal_2 += arr[i][j]
        p arr[i][j]
        i += 1
        j -= 1
    end
   
    difference = diagonal_1 - diagonal_2
    return difference.abs
end

arr = [
       [11, 2, 4],
       [4, 5, 6],
       [10, 8, -12]
        ]
p diagonal_difference(arr)