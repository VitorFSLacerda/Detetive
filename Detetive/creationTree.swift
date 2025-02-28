class CreationTree {
    let root = Node(name: "Menu")
    let notes = Anotation("Anotações")
    var current: Node

    
    init() {
        current = root
        
        let room = Node(name: "Cômodos")
        let suspect = Node(name: "Suspeitos")

        current.addSon(room)
        current.addSon(suspect)
        current.addSon(notes)

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
        let julieta = Suspect("", "", "", "")

        livingRoom.addSon(firstClueRoom)
        livingRoom.addSon(secondClueRoom)
        livingRoom.addSon(julieta)

        let firstClueChicken = Clue("Investigar lixo.", "Pacote de salgadinho.")
        let secondClueChicken = Clue("Investigar geladeira.", "Lista de compras com uma observação de comidas sem nozes.")
        let alex = Suspect("", "", "", "")

        chicken.addSon(firstClueChicken)
        chicken.addSon(secondClueChicken)
        chicken.addSon(alex)
        
        let firstClueRoomOne = Clue("Investigar chão.", "Camisa suja de salgadinho jogada.")
        let secondClueRoomOne = Clue("Investigar escrivaninha", "Remédio para dormir.")
        let clara = Suspect("", "", "", "")

        roomOne.addSon(firstClueRoomOne)
        roomOne.addSon(secondClueRoomOne)
        roomOne.addSon(clara)
        
        
        let firstClueRoomTwo = Clue("Investigar escrivaninha.", "Remédio antialérgico.")
        let secondClueRoomTwo = Clue("Investigar camas.", "Duas camas bagunçadas e uma totalmente arrumada.")
        let enzo = Suspect("", "", "", "")

        roomTwo.addSon(firstClueRoomTwo)
        roomTwo.addSon(secondClueRoomTwo)
        roomTwo.addSon(enzo)
        

        let firstClueToilet = Clue("Investigar chão.", "Toalha molhada no chão.")
        let secondClueToilet = Clue("Investigar box.", "Chuveiro queimado.")
        let samuel = Suspect("", "", "", "")

        roomTwo.addSon(firstClueToilet)
        roomTwo.addSon(secondClueToilet)
        roomTwo.addSon(samuel)
        
        let firstCluePoolArea = Clue("Investigar corpo.", "Corpo de André, sem sinais de luta ou lesões físicas e garganta inchada com vermelhidão.")
        let secondCluePoolArea = Clue("Investigar piscina", "Pulseira caída perto da piscina.")

        roomTwo.addSon(firstCluePoolArea)
        roomTwo.addSon(secondCluePoolArea)
        
        
        suspect.addSon(julieta)
        suspect.addSon(alex)
        suspect.addSon(clara)
        suspect.addSon(enzo)
        suspect.addSon(samuel)
    }
    
    
    func runGame(){
        
        var answer: String?
        print("Você está em: \(current.name)\n")
        while true{
            //clearTerminal()
            print("O que deseja fazer? Digite o número da escolha:\n\n")
            current.choices()
            answer = readLine()
            
            if answer == "0" {
                if current.name == "Menu" {
                    return
                }
                current = current.dad ?? current
                
            } else if answer == "1"{
                current = current.sons[0]
                
            } else if answer == "2"{
                current = current.sons[1]
                
            }  else if answer == "3"{
                current = current.sons[2]
            }
            
            print("Você está em: \(current.name)\n")
            
            if current.name == "Anotações" {
                notes.show()
                
            }
            
            if let clue = current as? Clue {
                clue.showClue()
                notes.add(clue.description)
            }
            


            if let suspect = current as? Suspect, current.dad?.name == "Suspeitos" {
                suspect.showEndStory()
                print("Fim de jogo.")
                return
            }
            
        }
    }
    
}
