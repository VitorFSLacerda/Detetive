import Foundation

class Suspect: Node {
    let endStory: [String]
    let alibi: String
    let insight: String
    let information: String
    

    init(_ name: String, _ alibi: String, _ endStory: [String], _ insight: String,  _ information: String) {
        self.alibi = alibi
        self.endStory = endStory
        self.insight = insight
        self.information = information
        super.init(name: name)
    }
    
    func showEndStory(){
        for (index, _) in self.endStory.enumerated() {
            print(endStory[index])
            if index < self.endStory.count - 1 {
                pressEnterTo(text: "Press enter to continue", n: 2)
            }
        }
    }
    
    func showAlibi(){
        print(alibi)
    }
}
