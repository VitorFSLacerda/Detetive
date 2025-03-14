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
            typewriter(endStory[index])
            pressEnterTo(text: "Pressione enter para continuar...", n: 2)
            clearTerminal()
        }
    }
    
    func showAlibi() -> String{
        return alibi
    }
    
    func showInformation(){
        print("\(information)")
    }
}
