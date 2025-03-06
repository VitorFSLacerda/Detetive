import Foundation

class Suspect: Node {
    let endStory: String
    let alibi: String
    let insight: String
    let information: String
    

    init(_ name: String, _ alibi: String, _ endStory: String, _ insight: String,  _ information: String) {
        self.alibi = alibi
        self.endStory = endStory
        self.insight = insight
        self.information = information
        super.init(name: name)
    }
    
    func showEndStory(){
        print(endStory)
    }
    
    func showAlibi(){
        print(alibi)
    }
}
