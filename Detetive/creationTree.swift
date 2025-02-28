class CreationTree {
    let root = Node(name: "Menu")
    let notes = Anotation()
    var current: Node

    init() {
        current = root
        
        let room = Node(name: "Cômodos")
        let suspect = Node(name: "Suspeitos")

        current.addSon(room)
        current.addSon(suspect)

        let livingRoom = Node(name: "Sala")
        let chicken = Node(name: "Cozinha")
        let roomOne = Node(name: "Quarto 1")
        let roomTwo = Node(name: "Quarto 2")
        let toilet = Node(name: "Banheiro")
        let poolArea = Node(name: "Piscina")


        room.addSon(livingRoom)
        room.addSon(chicken)
        room.addSon(roomOne)
        room.addSon(roomTwo)
        room.addSon(toilet)
        room.addSon(poolArea)
        
        let firstClueRoom = Clue("Investigar mesa.", "Farelhos de salgadinho na mesa.")
        let secondClueRoom = Clue("Investigar chão.", "Uma cadeira caída.")
        let julieta = Suspect("", "", "")

        livingRoom.addSon(firstClueRoom)
        livingRoom.addSon(secondClueRoom)
        livingRoom.addSon(julieta)

        let firstClueChicken = Clue("Investigar lixo.", "Pacote de salgadinho.")
        let secondClueChicken = Clue("Investigar geladeira.", "Lista de compras com uma observação de comidas sem nozes.")
        let alex = Suspect("", "", "")

        chicken.addSon(firstClueChicken)
        chicken.addSon(secondClueChicken)
        chicken.addSon(alex)
        
        let firstClueRoomOne = Clue("Investigar chão.", "Camisa suja de salgadinho jogada.")
        let secondClueRoomOne = Clue("Investigar escrivaninha", "Remédio para dormir.")
        let clara = Suspect("", "", "")

        roomOne.addSon(firstClueRoomOne)
        roomOne.addSon(secondClueRoomOne)
        roomOne.addSon(clara)
        
        
        let firstClueRoomTwo = Clue("Investigar escrivaninha.", "Remédio antialérgico.")
        let secondClueRoomTwo = Clue("Investigar camas.", "Duas camas bagunçadas e uma totalmente arrumada.")
        let enzo = Suspect("", "", "")

        roomTwo.addSon(firstClueRoomTwo)
        roomTwo.addSon(secondClueRoomTwo)
        roomTwo.addSon(enzo)
        

        let firstClueToilet = Clue("Investigar chão.", "Toalha molhada no chão.")
        let secondClueToilet = Clue("Investigar box.", "Chuveiro queimado.")
        let samuel = Suspect("", "", "")

        roomTwo.addSon(firstClueToilet)
        roomTwo.addSon(secondClueToilet)
        roomTwo.addSon(samuel)
        
        let firstCluePoolArea = Clue("Investigar corpo.", "Corpo de André, sem sinais de luta ou lesões físicas e garganta inchada com vermelhidão.")
        let secondCluePoolArea = Clue("Investigar piscina", "Pulseira caída perto da piscina.")
        let andre = Suspect("", "", "")

        roomTwo.addSon(firstCluePoolArea)
        roomTwo.addSon(secondCluePoolArea)
        roomTwo.addSon(andre)
        
    }
}
