import Foundation

class Suspect: Node {
    let endStory: String
    let alibi: String

    init(name: String, alibi: String, endStory: String, dad: Node? = nil) {
        self.alibi = alibi
        self.endStory = endStory
        super.init(name: name, dad: dad)
    }
    
    func showEndStory(){
        print(endStory)
    }
    
    func showAlibi(){
        print(alibi)
    }
}
