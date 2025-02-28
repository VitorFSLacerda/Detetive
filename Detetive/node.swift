import Foundation

class Node {
    let name: String
    weak var dad: Node?
    var sons: [Node] = []

    init(name: String) {
        self.name = name
    }
    
    func addSon(_ son: Node) {
        sons.append(son)
        son.dad = self     }
    
    
    func choices() {
        if  name == "Menu"{
            print("0. Sair")
        } else{
            print("0. Voltar")
        }
        if sons.isEmpty{
            return
        }
        for(index, son) in sons.enumerated(){
            print("\(index + 1). \(son.name) ")
        }

    }
}
