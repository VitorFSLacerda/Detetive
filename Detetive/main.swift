import Foundation

print(title)

// efeito piscando
blinkEffect(text: "---------------Press 1 to START game or 0 to QUIT---------------", n: 3)

var answer = readLine()
clearTerminal()

if answer == "1" {
   // typewriter(intro)
    print("Press enter to continue.")
    _ = readLine()
    let game = CreationTree()
    game.runGame()
}
else if answer == "0" {
    exit(0)
}
