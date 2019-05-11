#Write a method that will generate random english math problems. 
#The method should take a length, then return a math phrase with that many operations.
def random(length)
  nums = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "zero"]
  math_phrases = ["plus", "divided by", "times", "minus"]
  first_phrase = "#{nums.sample} #{math_phrases.sample} #{nums.sample}"
  return first_phrase if length <= 1
  counter = length -1
  while counter > 0
    counter -= 1
    first_phrase += " #{math_phrases.sample} #{nums.sample}"
  end
  puts first_phrase
end
random(8)
# mathphrase(1) => five minus two
# mathphrase(2) => two plus three times eighth