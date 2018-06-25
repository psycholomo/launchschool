#write a program to demonstrate use of a hash method to find if it contains a specific value

value_pairs = {weight: 1,height:2,name: "bob",hobby:"flying"}



if value_pairs.has_value?("bob") 
    puts "the value exists in the array with the key called #{value_pairs.key("bob")}"
  else puts "thats key does not exist"
end