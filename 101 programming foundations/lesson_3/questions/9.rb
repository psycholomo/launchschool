flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones_array = [flintstones.key(2), flintstones["Barney"]]
print flintstones_array

flintstones.assoc("Barney") # also returns an array of "Barney, 2"