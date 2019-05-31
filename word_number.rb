def number_swap(string)
  word_array = string.split(/\d+/)
  number_array = string.split(/\D+/)
  new_string = ""
  index = 1
  number_index = -1
  
  # p word_array
  # p number_array


  word_array.length.times do
    new_string += word_array[index - 1] + number_array[number_index]
    index += 1
    number_index -= 1
  end
 
  
  new_string
end

string = "Today is 70 degrees, feels like 85. Humidity is 100%."



#string = "70 is the temperature, but 85 is what it feels like."
p number_swap(string)
