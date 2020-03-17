
def missing(arr)
  return_arr = []
  counter = arr.sort.first
  last = arr.sort.last

  while counter < last
    if !arr.include?(counter)
      return_arr << counter
    end
    counter += 1
  end

  return_arr
end



p missing([-3, -2, 1, 5])# == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
p  missing([6]) == []

p missing([1,5])
