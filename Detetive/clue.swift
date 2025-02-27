import Foundation

class Clue {
    let name: String
    weak var dad: OptionNode?

    init(name: String, dad: OptionNode? = nil) {
        self.name = name
        self.dad = dad
    }
    
    func showClue() {
        print(name)
    }
}
