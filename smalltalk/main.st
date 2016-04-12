Object subclass: Shuffler [
  Shuffler class >> Knuth: aSequenceableCollection [
    |n k|
    n := aSequenceableCollection size.
    [ n > 1 ] whileTrue: [
      k := Random between: 1 and: n.
      aSequenceableCollection swap: n with: k.
      n := n - 1
    ]
  ]
].

names := OrderedCollection new.
names addAll: #('Matt' 'Brandy').
Shuffler Knuth: names.

factions := OrderedCollection new.
factions addAll: #('American' 'British' 'French' 'Indian').
Shuffler Knuth: factions.

length := names size

1 to: length do: [:x |
  '(' display.
  (names at: x) display.
  ', ' display.
  (factions at: x) display.
  ')' displayNl.
].
