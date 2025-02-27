import Foundation

class OptionNode {
    let name: String
    var sons: [OptionNode] = []
    var clues: [Clue] = []
    var suspect: [Suspect] = []
    weak var dad: OptionNode?

    init(name: String, dad: OptionNode? = nil) {
        self.name = name
        self.dad = dad
    }

    func addSon(_ son: OptionNode) {
        sons.append(son)
    }

    func addClue(_ clue: Clue) {
        clues.append(clue)
    }
    
    func addSuspect(_ suspect: Suspect) {
        suspect.append(suspect)
    }
    
    func listOptions() {
        print("\nOpções disponíveis em \(name):")
        for (index, son) in sons.enumerated() {
            print("\(index + 1). \(son)")
        }
    }
}
