class Anotation:  Node {
    var notes: [String] = []
    
    init(_ name: String) {
        super.init(name: name)
    }
    

    func add(_ note: String) {
        if !notes.contains(note) {
            notes.append(note)
            print("Anotação adicionada: \(note)")
        }
    }

    func show() {
        print("\nAnotações:")
        if notes.isEmpty {
            print("Nenhuma anotação registrada.")
        } else {
            for note in notes {
                print("-- \(note)")
            }
        }
    }
}
