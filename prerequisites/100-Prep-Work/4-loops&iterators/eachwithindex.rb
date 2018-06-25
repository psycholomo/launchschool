array = ["soft","hard","cold","hot","chewey","messy"]

index_array = array.each_with_index


index_array.each do |value,index|
  puts "#{value} is at index #{index} in the array."
end