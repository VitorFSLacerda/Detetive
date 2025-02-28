import Foundation

class Clue: Node {
    let description: String

    init(_ name: String, _ description: String) {
        self.description = description
        super.init(name: name)
    }

    func showClue(){
        print("Pista encontrada \(description).")
    }
}
