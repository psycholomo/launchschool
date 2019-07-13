

class PigLatin
  NON_VOWELS = /^(thr|th|ch|qu|sch|squ|[bcdfghjklmnpqrstvwxyz])/i
  VOWELS = /^([aeiou]|yt|xr)/i

  def self.translate(words)
    words = words.split
    changed_words = []

    words.each do |word|
      vowel = word.scan(VOWELS)
      other = word.scan(NON_VOWELS).flatten
      if vowel.empty?
        changed_words << word.delete_prefix(other[0]) + (other[0] + 'ay')
      else
        changed_words << word + 'ay'
      end
    end

    changed_words.join(' ')
  end
end