names = ["Matt", "Brandy", "Bradley"].shuffle
factions = ["Americans", "British", "French", "Indians"].shuffle

result = names.
  zip(factions).
  map(&:inspect)

puts result
