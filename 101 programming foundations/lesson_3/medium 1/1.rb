10.times do |i|  puts(" " * i + "Flintstones") end

#is the same as this.. without the do
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
