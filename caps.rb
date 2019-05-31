def caps_array(string)
  array = string.split('')
  caps_array = []
  array.each do |element|
    element = element.capitalize
    caps_array << element
  end
  p caps_array
end

caps_array("elemental")