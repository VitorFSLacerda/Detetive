class NavegationTree {
    let root = OptionNode(name: "Menu Principal")
    let notes = Anotation()
    var current: Node

    init() {
        current = root
        
        let room = OptionNode(name: "Cômodos")
        let suspect = OptionNode(name: "Suspeitos")

        root.addSon(room)
        root.addSon(suspect)

        let livingRoom = OptionNode(name: "Sala")
        room.addSon(livingRoom)
        livingRoom.addSon(Clue(name: "", description: ""))
        suspect.addSon(Suspect(name: "", alibi: "", endStory: ""))
    }

    
    
}
