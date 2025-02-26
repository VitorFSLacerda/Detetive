import Foundation

// Classe Nodo para representar um ponto na navegação
class Nodo {
    let nome: String
    var filhos: [Nodo] = []
    weak var pai: Nodo?

    init(nome: String, pai: Nodo? = nil) {
        self.nome = nome
        self.pai = pai
    }

    func adicionarFilho(_ nodo: Nodo) {
        nodo.pai = self  // Define o pai do filho
        filhos.append(nodo)
    }

    func listarOpcoes() {
        print("\nOpções disponíveis em \(nome):")
        for (index, filho) in filhos.enumerated() {
            print("\(index + 1). \(filho.nome)")
        }
        if let _ = pai {
            print("0. Voltar")
        }
    }
}

// Classe para a árvore de navegação
class ArvoreNavegacao {
    let raiz: Nodo

    init() {
        raiz = Nodo(nome: "Menu Principal")

        let anotacoes = Nodo(nome: "Anotações", pai: raiz)
        let comodos = Nodo(nome: "Cômodos", pai: raiz)
        let suspeitos = Nodo(nome: "Suspeitos", pai: raiz)

        raiz.adicionarFilho(anotacoes)
        raiz.adicionarFilho(comodos)
        raiz.adicionarFilho(suspeitos)

        let sala = Nodo(nome: "Sala")
        let cozinha = Nodo(nome: "Cozinha")
        let quarto = Nodo(nome: "Quarto")

        comodos.adicionarFilho(sala)
        comodos.adicionarFilho(cozinha)
        comodos.adicionarFilho(quarto)

        sala.adicionarFilho(Nodo(nome: "Pista 1"))
        sala.adicionarFilho(Nodo(nome: "Pista 2"))
        sala.adicionarFilho(Nodo(nome: "Interrogar Suspeito"))

        cozinha.adicionarFilho(Nodo(nome: "Pista 1"))
        cozinha.adicionarFilho(Nodo(nome: "Pista 2"))
        cozinha.adicionarFilho(Nodo(nome: "Interrogar Suspeito"))
    }
}

// Classe do jogo para navegação
class Jogo {
    let arvore = ArvoreNavegacao()
    var nodoAtual: Nodo

    init() {
        nodoAtual = arvore.raiz
    }

    func navegar(para opcao: Int) {
        if opcao == 0, let pai = nodoAtual.pai {
            nodoAtual = pai
            print("Voltando para: \(nodoAtual.nome)")
        } else if opcao > 0 && opcao <= nodoAtual.filhos.count {
            nodoAtual = nodoAtual.filhos[opcao - 1]
            print("Você entrou em: \(nodoAtual.nome)")
        } else {
            print("Opção inválida.")
        }
    }

    func mostrarOpcoes() {
        nodoAtual.listarOpcoes()
    }
}

let jogo = Jogo()

while true {
    jogo.mostrarOpcoes()
    print("\nEscolha uma opção:")
    if let escolha = readLine(), let opcao = Int(escolha) {
        jogo.navegar(para: opcao)
    }
}
