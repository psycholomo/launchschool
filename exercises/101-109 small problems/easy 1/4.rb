#Write a method that counts the number of occurrences of each element in a given array.

# expected outcome car => 4, etc etc all words are case sensitive
vehicle_counts = {}
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


def how_many(things, counts)
  for i in things
    if counts.key?(i)
      counts[i] += 1
    else
      counts[i] = 1
    end
  end
puts(counts)

end

how_many(vehicles, vehicle_counts)

