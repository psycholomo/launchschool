#return (Name) is a (age)-year-old (male or female).

def print(hash)
  hash.select do |key, value|

    puts "#{key} is a #{value["age"]}-year-old #{value["gender"]}."
  end


end
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

print(munsters)

