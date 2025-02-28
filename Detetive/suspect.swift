import Foundation

class Suspect: Node {
    let endStory: String
    let alibi: String

    init(_ name: String, _ alibi: String, _ endStory: String) {
        self.alibi = alibi
        self.endStory = endStory
        super.init(name: name)
    }
    
    func showEndStory(){
        print(endStory)
    }
    
    func showAlibi(){
        print(alibi)
    }
}
