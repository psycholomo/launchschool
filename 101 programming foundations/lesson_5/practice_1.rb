#How would you order this array of number strings by descending numeric value?


arr = ['10', '11', '9', '7', '8']

def sorter(array)

  array.sort do |a,b|
  b.to_i <=> a.to_i

  end
end

p sorter(arr)