def english_number(number)
  if number < 0 # no negative numbers

    return "Please enter a number that isn't negative."
  end

  if number === 0
    return "zero"

  end

  num_string = ''

  ones_place = ["one", "two","three","four","five","six","seven","eight","nine"]

  tens_place = ['ten',"twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

  teenagers = ["eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]

  thousands = ["thousand"]

  left = number

  write = left/100

  left = left - write * 100

  if write > 0
    hundreds = english_number(write)
    num_string = num_string + hundreds + ' hundred'

    if left > 0
      num_string = num_string + ' '

    end
  end

  write = left/10
  left = left - write * 10

  if write > 0
    if ((write == 1) and (left > 0))

      num_string = num_string + teenagers[left -1]
      left = 0

    else

      num_string = num_string + tens_place[write -1]

    end

    if left > 0
      num_string = num_string + '-'
    end
  end

write = left

left = 0

if write > 0

  num_string = num_string + ones_place[write -1]

end
num_string

end






new_counter = 100
second_bottle = 99
99.times do 
  new_counter -= 1
  second_bottle -= 1
counter = english_number(new_counter)
the_other_bottle = english_number(second_bottle)


  if new_counter == 1
  puts("#{counter} bottle of beer on the wall")
  puts("#{counter} bottle of beer")
  puts ("take one down pass it around")
  puts ("#{the_other_bottle} bottles of beer on the wall")
  puts " "
  puts "THE END"

elsif new_counter == 2
    puts("#{counter} bottles of beer on the wall")
  puts("#{counter} bottles of beer")
  puts ("take one down pass it around")
  puts ("#{the_other_bottle} bottle of beer on the wall")
  puts " "
else

  puts("#{counter} bottles of beer on the wall")
  puts("#{counter} bottles of beer")
  puts ("take one down pass it around")
  puts ("#{the_other_bottle} bottles of beer on the wall")
  puts " "
end
end

