names = ["Matt", "Brandy", "Bradley"]
factions = ["Americans", "British", "French", "Indians"]

result = names.
  zip(factions).
  map(&:inspect)

puts result
