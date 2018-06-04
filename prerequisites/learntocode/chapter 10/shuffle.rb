
array_of_words = ["this", "apple","is","really","yummy","to","eat", "yummy", "Yummy"]

def shuffler(array)
  shuffled_array = []

  i = array.length;
  
  while i > 0
  random_number = rand(i)


    shuffled_array.push(array[random_number])
    array.delete_at(random_number)

    i -=1      

end

return p shuffled_array
end


shuffler(array_of_words)
