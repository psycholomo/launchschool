arr = [[2], [3, 5, 7], [9], [11, 13, 15]]


arr.map do |value|
  new_array = []
  value.each do |num|
  if num % 3 == 0
    new_array.push(num)
  end
end

new_array
end

p arr

arr.map do |element|
  element.select do |num|
    num % 3 == 0
  end
end