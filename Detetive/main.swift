import Foundation

//for cact in text {
//    print(cact, terminator: "")
//    usleep(500000)
//}



print("---------------------------DETETIVE-----------------------\n")
print("------------Press 1 to START game or 0 to QUIT------------\n")
print("Answer: ", terminator: "")
var answer = readLine()

if answer == "1"{
    print("") //sinopse
    let game = CreationTree()
    game.runGame()
}
