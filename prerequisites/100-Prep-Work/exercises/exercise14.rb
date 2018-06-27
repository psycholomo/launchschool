contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


#p contacts["Joe Smith"]


  counter = 0
  hashes = [:email,:address,:phone]
  while counter < contact_data[0].size
    contacts["Joe Smith"][hashes[counter]] = contact_data[0][counter]
    counter += 1
  end

#p contact_data[0]

#contact_data("joe")

#p contact_data[0].size

p contacts