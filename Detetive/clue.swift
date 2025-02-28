import Foundation

class Clue: Node {
    let description: String

    init(name: String, description: String, dad: Node? = nil) {
        self.description = description
        super.init(name: name, dad: dad)
    }

    func showClue(){
        print("Pista encontrada \(description).")
    }
}
