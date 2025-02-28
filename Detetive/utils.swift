import Foundation

func clearTerminal() {
    print("\u{1B}[2J")
    print("\u{1B}[H")
}

func typewriter(_ text: String) {
    let words = text.split(separator: " ")
    for word in words {
        for char in word {
            print(char, terminator: "")
            fflush(stdout)
            usleep(50000)
        }
        print(" ", terminator: "")
        fflush(stdout)
        usleep(100000)
    }
    print("")
}

func blinkEffect(text: String, n: Int) {
    var count = n
    while count != 0 {
        print("                                                                 ", terminator: "\r")
        fflush(stdout)
        usleep(500000)
        
        print(text, terminator: "\r")
        fflush(stdout)
        usleep(500000)

        count -= 1
    }
}
