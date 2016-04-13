from random import shuffle
names = ['Matt', 'Brandy']
factions = ['American', 'British']

shuffle(names)
shuffle(factions)

pairs = zip(names, factions)

for pair in pairs:
  print pair
