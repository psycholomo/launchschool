advice = "Few things in life are as important as house training your pet dinosaur."
#3advice.slice!(39..-1)

advice.slice!(0, advice.index('house')) # index method far more useful then counting.

puts advice