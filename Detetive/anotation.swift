class Anotation {
    private var notes: [String] = []

    func add(_ note: String) {
        if !notes.contains(note) {
            notes.append(note)
            print("📝 Anotação adicionada: \(note)")
        }
    }

    func show() {
        print("\n📓 Anotações:")
        if notes.isEmpty {
            print("Nenhuma anotação registrada.")
        } else {
            for note in notes {
                print("-- \(note)")
            }
        }
    }
}
