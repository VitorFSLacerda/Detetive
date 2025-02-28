import Foundation

class Node {
    let name: String
    weak var dad: Node?
    var sons: [Node] = []

    init(name: String, dad: Node? = nil) {
        self.name = name
        self.dad = dad
    }
    
    func addSon(_ son: Node) {
        sons.append(son)
        self.dad = self
    }
    
    
    func listOptions() {
        if sons.isEmpty{
            print("\nNenhuma opção disponível.")
            return
        }
        print("\nOpções disponíveis em \(name)")
        for(index, son) in sons.enumerated(){
            print("\(index + 1). \(son.name) ")
        }
        print("0. Voltar")
    }
}
