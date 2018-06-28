arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']


arr.each do |word|
  
  arr.delete_if{word.start_with?("s","w")}
    
    #arr.delete(word)
    
  
end

