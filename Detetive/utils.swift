import Foundation

func clearTerminal() {
    print("\u{1B}[2J")
    print("\u{1B}[H")
}

func typewriter(_ text: String) {
    for char in text{
        if char == " " {
            usleep(100000)
        }
        print(char, terminator: "")
        fflush(stdout)
    }
    print("")
}
