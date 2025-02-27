import Foundation

class Suspect {
    let name: String
    var endStory: String = ""
    var alibi: String = ""
    weak var dad: OptionNode?
    

    init(name: String, dad: OptionNode? = nil) {
        self.name = name
        self.dad = dad
    }

    func insertEndStory(_ endStory: String) {
        self.endStory = endStory
    }
    
    func showEndStory(){
        print(endStory)
    }
    
    func insertAlibi(_ alibi: String){
        self.alibi = alibi
    }
    
    func showAlibi(){
        print(alibi)
    }
}
