import Foundation

print(title)

// efeito piscando
blinkEffect(text: "---------------Press 1 to START game or 0 to QUIT---------------", n: 3)

var answer = readLine()
clearTerminal()

if answer == "1" {
    // typewriter(intro)
    print("\n")
    pressEnterTo(text: "Press enter to continue", n: 2)
    let game = CreationTree()
    clearTerminal()

    game.runGame()
}
else if answer == "0" {
    exit(0)
}
