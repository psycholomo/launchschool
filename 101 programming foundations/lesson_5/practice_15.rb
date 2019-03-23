# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
new_hash = {}
arr.map do |value|
  value.map do |k, v|

    if v.all? {|num| num.even?} == true
      new_hash[k] = v
    end
  end
end

p new_hash



new_array = arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end

p new_array