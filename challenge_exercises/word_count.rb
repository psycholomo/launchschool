# Write a program that given a phrase can count the occurrences of each word in that phrase.

# For example, if we count the words for the input "olly olly in come free", we should get:

# olly: 2
# in: 1
# come: 1
# free: 1
require 'pry'

class Phrase
  attr_reader :string
  def initialize(string)
    @string = string
  end

  def word_count
    hsh = {}
    words_array = string.downcase.scan(/\b[a-z'0-9]+\b/)
    unique_words = words_array.uniq
    unique_words.each {|word| hsh[word] = words_array.count(word)}
    hsh
  end
end