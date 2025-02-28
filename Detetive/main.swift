import Foundation

print("---------------------------DETETIVE-----------------------\n")
print("------------Press 1 to START game or 0 to QUIT------------\n")
var answer = readLine()

if answer == "1"{
    print("") //sinopse
    let game = CreationTree()
    game.runGame()
}
