import Foundation

class Suspect: Node {
    let endStory: String
    let alibi: String
    let insight: String

    init(_ name: String, _ alibi: String, _ endStory: String, _ insight: String) {
        self.alibi = alibi
        self.endStory = endStory
        self.insight = insight
        super.init(name: name)
    }
    
    func showEndStory(){
        print(endStory)
    }
    
    func showAlibi(){
        print(alibi)
    }
}
