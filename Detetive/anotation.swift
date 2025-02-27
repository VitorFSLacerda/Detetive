import Foundation

class Anotation {
    var notes: [String] = []
    weak var dad: OptionNode?
    
    init(dad: OptionNode? = nil) {
        self.dad = dad
    }
    
    func addNotes(_ note: String) {
        if !notes.contains(note) {
            notes.append(note)
            print("📝 Anotação adicionada: \(note)")
        }
    }

    func showNotes() {
        print("\n📓 Anotações:")
        if notes.isEmpty {
            print("Nenhuma anotação registrada ainda.")
        } else {
            for note in notes {
                print("-- \(note)")
            }
        }
    }
}
