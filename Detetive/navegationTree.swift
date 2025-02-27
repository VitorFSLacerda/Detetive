

class NavegationTree {
    let root: OptionNode

    init() {
        root = OptionNode(name: "Menu Principal")

        let note = Anotation(name: "Anotações")
        let room = OptionNode(name: "Cômodos")
        let suspect = Suspect(name: "Suspeitos")

        root.addSon(note)
        root.addSon(room)
        root.addSon(suspect)

        let livingRoom = OptionNode(name: "Sala")
        let chicken = OptionNode(name: "Cozinha")

        room.addSon(livingRoom)
        room.addSon(chicken)

        // Adicionando pistas e suspeitos dentro dos cômodos
        livingRoom.addSon(Clue(name: "Pista 1 - Pegada de lama"))
        livingRoom.addSon(Clue(name: "Pista 2 - Copo quebrado"))
        livingRoom.addSon(Suspect(name: "Interrogar Suspeito"))

        room.addSon(Clue(name: "Pista 1 - Faca suja"))
        room.addSon(Clue(name: "Pista 2 - Pegadas molhadas"))
        room.addSon(Suspect(name: "Interrogar Suspeito"))
    }
}
