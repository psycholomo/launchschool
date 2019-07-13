# Write a program that, given a word and a list of possible anagrams,
# selects the correct sublist that contains the anagrams of the word.

# For example, given the word "listen" and a list of candidates like
# "enlists" "google" "inlets" "banana" the program should return a list
# containing "inlets". Please read the test suite for exact rules of anagrams.

class Anagram
  attr_reader :target
  def initialize(target)
    @target = target
  end

  def match(array)
    anagrams = []
    sorted_target = target.downcase.chars.sort
    array.each do |word|
      sorted_word = word.downcase.chars.sort
      if sorted_word == sorted_target && word.downcase != target.downcase
        anagrams << word
      end
    end
    anagrams
  end
end