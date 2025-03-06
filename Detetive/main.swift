import Foundation

clearTerminal()

print(title)

// efeito piscando
blinkEffect(text: "--------------- Pressione 1 para COMEÇAR o jogo ou 0 para SAIR ---------------", n: 3)

var answer = readLine()
clearTerminal()

if answer == "1" {
    // typewriter(intro)
    print("\n")
    pressEnterTo(text: "Pressione enter para continuar...", n: 2)
    let game = CreationTree()
    clearTerminal()

    game.runGame()
}
else if answer == "0" {
    exit(0)
}
