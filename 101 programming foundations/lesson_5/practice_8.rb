#Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

def vowels(hash)

  vowels = ['a','e','i','o','u']
  hash.each do |_, value|
    for i in value
      i.chars.each do |value|
        if vowels.include?(value)
          puts value
        end
      end
    end
  end
end

vowels(hsh)