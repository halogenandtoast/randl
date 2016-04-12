import Foundation

extension CollectionType {
    /// Return a copy of `self` with its elements shuffled
    func shuffle() -> [Generator.Element] {
        var list = Array(self)
        list.shuffleInPlace()
        return list
    }
}

extension MutableCollectionType where Index == Int {
    /// Shuffle the elements of `self` in-place.
    mutating func shuffleInPlace() {
        // empty and single-element collections don't shuffle
        if count < 2 { return }

        for i in 0..<count - 1 {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}

let names = ["Matt", "Brandy"]
let factions = ["ARVN", "Viet Kong", "USA", "NVA"]
let shuffled_names = names.shuffle()
let shuffled_factions = factions.shuffle()
let pairs = Array(Zip2Sequence(shuffled_names, shuffled_factions))

for pair in pairs {
  print(pair)
}
