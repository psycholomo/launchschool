# Write a program that, given a word, computes the scrabble score for that word.

# Letter Values
# You'll need these:

# Letter                           Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10
# Examples
# "cabbage" should be scored as worth 14 points:

# 3 points for C
# 1 point for A, twice
# 3 points for B, twice
# 2 points for G
# 1 point for E
# And to total:

# 3 + 2*1 + 2*3 + 2 + 1
# = 3 + 2 + 6 + 3
# = 5 + 9
# = 14

class Scrabble
  def initialize(word)
    @word = word
  end

  def self.score(word)
    return 0 unless word =~ /\b[\w]+\b/
    hash_scores = {}
    create_hash_scores(hash_scores)
    word.each_char.map {|char| hash_scores[char.upcase]}.reduce(:+)
  end

  def score
    self.class.score(@word)
  end

  def self.create_hash_scores(hash_scores)
    %w(A E I O U L N R S T).each { |letter| hash_scores[letter] = 1 }
    %w(D G).each { |letter| hash_scores[letter] = 2 }
    %w(B C M P).each { |letter| hash_scores[letter] = 3 }
    %w(F H V W Y).each { |letter| hash_scores[letter] = 4 }
    %w(K).each { |letter| hash_scores[letter] = 5 }
    %w(J X).each { |letter| hash_scores[letter] = 8 }
    %w(Q Z).each { |letter| hash_scores[letter] = 10 }
  end
end
