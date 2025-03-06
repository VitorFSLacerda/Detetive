import Foundation

class Node {
    let name: String
    weak var dad: Node?
    weak var dadTwo: Node?

    var sons: [Node] = []

    init(name: String) {
        self.name = name
    }
    
    func addSon(_ son: Node) {
        sons.append(son)
        if son.dad == nil {
            son.dad = self
        } else if son.dadTwo == nil {
            son.dadTwo = self
        }
    }
    
    
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
