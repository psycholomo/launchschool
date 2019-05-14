
open_file = File.open('/Users/onji/Documents/launchschool/exercises/101-109 small problems/medium 2/Four_score.txt', mode="r")
word_arr = []
open_file.each do |word|
  word_arr << word.split(' ')
end

word_arr =  word_arr.flatten

sentence_end = ['.','?','!']
counter = 0
placeholder = 0
  for i in word_arr
    if sentence_end.include?(i[-1])
      if placeholder > counter
        counter = 0
      else
        placeholder = counter
        counter = 0
      end
      
    end
    counter += 1
  end

  puts placeholder
