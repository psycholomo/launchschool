def substring_test(string1, string)
  new_str = string1.downcase.split('')
  new_str2 = string2.downcase.split('')

  str

  string1_arr = []
  string2_arr = []
  
  counter_main = 0
  counter_sec = 1

  loop do
    loop do
      string1 << string1[counter_main]..string1[counter_sec]
      counter_sec += 1
      break if counter_sec == string1.size
    end

    break if counter_main == string1.size
    counter_sec = counter_main + 1
    counter_main += 1
  end



  p string1_arr
  
end