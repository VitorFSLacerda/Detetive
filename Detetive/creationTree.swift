class CreationTree {
    let root = Node(name: "Menu")
    let notes = Anotation("Anotações")
    var current: Node

    
    init() {
        current = root
        
        let room = Node(name: "Cômodos")
        let suspect = Node(name: "Escolher assassino")

        current.addSon(room)
        current.addSon(suspect)
        current.addSon(notes)

        let livingRoom = Node(name: "Sala")
        let kitchen = Node(name: "Cozinha")
        let roomOne = Node(name: "Quarto 1")
        let roomTwo = Node(name: "Quarto 2")
        let toilet = Node(name: "Banheiro")
        let poolArea = Node(name: "Piscina")


        room.addSon(livingRoom)
        room.addSon(kitchen)
        room.addSon(roomOne)
        room.addSon(roomTwo)
        room.addSon(toilet)
        room.addSon(poolArea)
        
        let firstClueRoom = Clue("Investigar mesa.", "Farelhos de salgadinho na mesa.")
        let secondClueRoom = Clue("Investigar chão.", "Uma cadeira caída.")
        let julieta = Suspect(
            "Julieta",
            "André estava na sala, e eu sentei para ler um livro. Acho que peguei no sono sem perceber. Quando acordei, já era de manhã.",
            ["Você escolhe Julieta. Seu olhar analítico é mal interpretado como frieza, e seu silêncio faz dela a suspeita perfeita...",
             "Mesmo sem provas concretas, o júri a considera culpada. Passa cinco anos na prisão antes que uma reavaliação do caso prove sua inocência...",
             "Ao sair, escreve um livro sobre sua experiência, denunciando falhas no sistema judiciário. Uma simples caixa de remédio para dormir próxima à sua cama e um exame toxicológico poderiam ter provado sua inocência..."],
            "Foi a última a ver André? Se estava na sala, por que não notou nada estranho? Seu conhecimento psicológico poderia ajudá-la a manipular uma situação?", "Colega do grupo. Estudante de psicologia. Observadora, analítica e reservada, gosta de avaliar as pessoas ao redor.")

        livingRoom.addSon(firstClueRoom)
        livingRoom.addSon(secondClueRoom)
        livingRoom.addSon(julieta)

        let firstClueKitchen = Clue("Investigar lixo.", "Pacote de salgadinho.")
        let secondClueKitchen = Clue("Investigar geladeira.", "Lista de compras com uma observação de comidas sem nozes.")
        let alex = Suspect(
            "Alex",
            "Fiquei limpando a bagunça da festa perto da piscina. Depois, passei rapidamente pela sala e vi André sentado antes de ir para o quarto.",
            ["Você escolhe Alex. Como anfitrião da festa e o último visto na cena do crime, todas as suspeitas recaem sobre ele...",
             "Ele é condenado a 15 anos de prisão. No início, se mantém firme, alegando inocência, mas a injustiça o consome. Cinco anos depois, novas investigações provam que ele não é o verdadeiro assassino e que realmente só estava organizando o local...",
             "Sua reputação está arruinada e, diferente da pessoa calma que era antes, agora vive na defensiva e nunca mais confia em ninguém..."],
            "Sua pulseira foi encontrada na piscina. Se ele foi o último visto por lá, poderia ter presenciado algo ou mesmo estar escondendo alguma informação? Poderia estar encobrindo alguém para evitar problemas na sua propriedade?", "Dono da chácara, anfitrião da festa. Estudante de direito. Responsável, gosta de manter a ordem e evitar confusão."
        )

        kitchen.addSon(firstClueKitchen)
        kitchen.addSon(secondClueKitchen)
        kitchen.addSon(alex)
        
        let firstClueRoomOne = Clue("Investigar chão.", "Camisa suja de salgadinho jogada.")
        let secondClueRoomOne = Clue("Investigar escrivaninha", "Remédio para dormir.")
        let clara = Suspect(
            "Clara",
            "Eu estava me sentindo mal, então fui para o quarto e dormi cedo. Só soube do que aconteceu de manhã, quando me levantei e vi o corpo de André na piscina. Fiquei desesperada e gritei para chamar ajuda.",
            ["Você escolhe Clara. Como estudante de enfermagem e ciente da alergia de André, Clara tornou-se a maior suspeita...",
             "Ela é condenada a 10 anos de prisão. Apesar de estar afastada de André, jamais desejaria seu mal. Depois de cinco anos na cadeia, novas provas surgem e Clara é inocentada...",
             "Sua vida, no entanto, nunca mais é a mesma. Consumida pela culpa por não estar acordada para oferecer o antialérgico, Clara abandona a enfermagem e se muda para outra cidade, tentando esquecer o passado."],
            "Ninguém confirma que ela realmente dormiu a noite toda.", "Namorada de André. Estudante de enfermagem. Cuidadosa e empática, mas ultimamente estava distante de André.")

        roomOne.addSon(firstClueRoomOne)
        roomOne.addSon(secondClueRoomOne)
        roomOne.addSon(clara)
        
        
        let firstClueRoomTwo = Clue("Investigar escrivaninha.", "Remédio antialérgico.")
        let secondClueRoomTwo = Clue("Investigar camas.", "Duas camas bagunçadas e uma totalmente arrumada.")
        let enzo = Suspect(
            "Enzo",
            "Fiquei na cozinha com Julieta e Alex até tarde. Depois, peguei um copo d’água e fui direto para o meu quarto.",
            ["Você escolhe Enzo. Ele imagina ter cometido o crime perfeito, mas suas falhas te levam à resposta certa...",
             "Durante a madrugada, o estudante pega um pacote de salgadinhos e oferece para André de forma inocente. Enzo apenas quer interagir com André e fazer parte do grupo, já que é grande amigo de Clara...",
             "André aceita os salgadinhos e, poucos segundos depois, começa a passar mal. Enzo não sabe o que está acontecendo, mas percebe que algo está errado quando André fica com o rosto inchado e começa a ter dificuldades para respirar...",
             "André, desesperado, tenta encontrar seu remédio na mochila. Ele era alérgico a amendoim. Mas, não acha e desmaia. Enzo fica apavorado. Ele pensa que André está morto e, em um momento de pânico, age de maneira impulsiva...",
             "Em vez de chamar ajuda, ele arrasta o corpo de André até a piscina e o joga lá, na esperança de que, ao encontrarem o corpo, a causa da morte seja confundida com um afogamento...",
             "Agora, atrás das grades, Enzo lembra de cada detalhe. Poderia ter evitado tudo, mas faz a pior escolha possível. Se tivesse chamado ajuda, André provavelmente ainda estaria vivo...",
             "E o pior de tudo? Mesmo contando sua versão, ninguém acredita que foi apenas um erro terrível. Todos estão convencidos de que Enzo era apaixonado por Clara e queria tirar André do caminho..."],
            "Nunca foi próximo de André, mas tentava se aproximar dele para agradar Clara. Sua proximidade com Clara poderia indicar um motivo oculto para prejudicar André? Além disso, se Clara dormia — ninguém viu se ele realmente foi para o quarto.", "Estudante de engenharia civil. Brincalhão, sarcástico e próximo de Clara.")

        roomTwo.addSon(firstClueRoomTwo)
        roomTwo.addSon(secondClueRoomTwo)
        roomTwo.addSon(enzo)
        

        let firstClueToilet = Clue("Investigar chão.", "Toalha molhada no chão.")
        let secondClueToilet = Clue("Investigar box.", "Chuveiro queimado.")
        let samuel = Suspect(
            "Samuel",
            "Fui tomar banho antes de dormir. Enquanto estava no chuveiro, ouvi um barulho vindo da piscina, mas achei que fosse apenas alguém jogando algo na água. Não dei importância e fui dormir. Vi Alex deitado no quarto.",
            ["Você escolhe Samuel. Sua lealdade a André é ignorada, e seu temperamento é visto como um motivo para o crime...",
             "Condenado a 12 anos de prisão, passa os primeiros anos tentando provar sua inocência. Quando a verdade finalmente vem à tona, ele já perdeu muito: seu melhor amigo e sua família...",
             "Sente muita culpa por não ter ido conferir o barulho que ouviu na piscina, pensando que André poderia estar vivo hoje...",
             "Ao sair da prisão, se torna ativista contra condenações injustas, determinado a evitar que outros passem pelo que ele passou."],
            "O que ele ouviu pode ter sido André caindo na piscina? Se o barulho o incomodou, por que não foi verificar? Ninguém pode confirmar que ele realmente foi dormir logo após sair do banho.", "Estudante de ciência da computação. Protetor e leal, mas temperamental.  Sempre teve uma relação de amizade intensa com André.")

        toilet.addSon(firstClueToilet)
        toilet.addSon(secondClueToilet)
        toilet.addSon(samuel)
        
        let firstCluePoolArea = Clue("Investigar corpo.", "Corpo de André, sem sinais de luta ou lesões físicas e garganta inchada com vermelhidão.")
        let secondCluePoolArea = Clue("Investigar piscina", "Pulseira caída perto da piscina.")

        poolArea.addSon(firstCluePoolArea)
        poolArea.addSon(secondCluePoolArea)
        
        
        suspect.addSon(julieta)
        suspect.addSon(alex)
        suspect.addSon(clara)
        suspect.addSon(enzo)
        suspect.addSon(samuel)
    }
    
    
    func runGame(){
        
        var answer: String?
        print("Você está em: \(current.name)\n")
        var aux: Node?
        
        while true{
            print("\nO que deseja fazer? Digite o número da escolha:\n\n")
            current.choices()
            answer = readLine()
            
            aux = current
            
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
                
            }  else if answer == "4" {
                current = current.sons[3]
                
            } else if answer == "5" {
                current = current.sons[4]
                
            } else if answer == "6" {
                current = current.sons[5]
            }
            
            clearTerminal()

            print("Você está em: \(current.name)\n")
            
            if current.name == "Anotações" {
                notes.show()
                
            }
            
            if let clue = current as? Clue {
                clue.showClue()
                notes.add("Local da pista [\(aux?.name ?? "Local desconhecido")] - \(clue.description)")
                pressEnterTo(text: "Press enter to continue", n: 2)
                clearTerminal()
                current = aux ?? current
            }
            
            if aux?.name == "Cômodos" {
                if current.name == "Quarto 1" { // alex, julieta, samuel
                    notes.add("Local da pista [\(current.name)] - Local onde Alex, Samuel e Julieta estavam hospedados.")
                    
                } else if current.name == "Quarto 2" { //enzo , andre e clara
                    notes.add("Local da pista [\(current.name)] - Local onde Enzo, André e Clara estavam hospedados.")
                }
            }
            
            if let suspect = current as? Suspect {
                if aux?.name == "Escolher assassino" {
                    suspect.showEndStory()
                    if suspect.name != "Enzo"{
                        print("Você escolheu o suspeito errado. O que deseja fazer?")
                        print("1. Recomeçar o jogo sem saber quem é o assassino.")
                        print("2. Descobrir quem era o assassino.")
                        print("0. Sair do jogo.")

                        let choice = readLine()
                        clearTerminal()

                        if choice == "1" {
                            typewriter("Reiniciando o jogo...\n")
                            clearTerminal()
                            let newGame = CreationTree()
                            newGame.runGame()
                            return
                        } else if choice == "2" {
                            print("O assassino era Enzo!\n")
                            
                            if aux != nil {
                                for son in aux?.sons ?? [] {
                                    if let suspect = son as? Suspect, son.name == "Enzo" {
                                        suspect.showEndStory()
                                    }
                                }
                            }

                            print("Fim de jogo.")
                            return
                        } else if choice == "0" {
                            typewriter("Saindo do jogo...\n")
                            clearTerminal()
                            return
                        } else {
                            print("Escolha inválida. O jogo terminará.")
                            return
                        }
                    }
                    print("Fim de jogo.")
                    return
                    
                } else {
                    suspect.showInformation()
                    pressEnterTo(text: "Pressione enter para continuar...", n: 2)
                    clearTerminal()
                    typewriter("\(suspect.name): '\(suspect.showAlibi())'")
                    notes.add("Sobre \(suspect.name). \(suspect.insight)")
                    pressEnterTo(text: "Pressione enter para continuar...", n: 2)
                    clearTerminal()
                    current = aux ?? current
                }
            }
        }
    }
}

