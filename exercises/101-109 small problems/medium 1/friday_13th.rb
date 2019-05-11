require 'date'
#write a method that takes a year and returns how many friday the 13ths that were there in a year.

def friday_13(year)
#friday? method
months = 1
friday_13_counter = 0
while months <= 12
  if Date.new(year, months, 13).friday?
    friday_13_counter += 1
  end
  months += 1

end
friday_13_counter
end

p friday_13(2015)  == 3
p friday_13(1986) == 1

# 2015 = 3
# 1986 = 1