#We could have used either Array#concat or Array#push to add Dino to the family.

#How can we add multiple items to our array? (Dino and Hoppy

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
new_additions = %w(Dino Hoppy)

flintstones += new_additions

flintstones.concat(%w(Dino Hoppy)) # also works you can also use the push method

