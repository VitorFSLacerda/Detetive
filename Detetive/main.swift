import Foundation

// Classe do jogo para navegação
class Jogo {
    let arvore = ArvoreNavegacao()
    var nodoAtual: Nodo
    let anotacoes = Anotacoes()

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

            // Se o jogador entrou em uma pista, ela é anotada
            if nodoAtual.nome.contains("Pista") {
                anotacoes.adicionarAnotacao(nodoAtual.nome)
            }
        } else {
            print("Opção inválida.")
        }
    }

    func mostrarOpcoes() {
        nodoAtual.listarOpcoes()
    }

    func abrirAnotacoes() {
        anotacoes.mostrarAnotacoes()
    }
}

// Exemplo de uso no terminal
let jogo = Jogo()

while true {
    jogo.mostrarOpcoes()
    print("\nEscolha uma opção:")
    if let escolha = readLine(), let opcao = Int(escolha) {
        if jogo.nodoAtual.nome == "Anotações" {
            jogo.abrirAnotacoes()
        } else {
            jogo.navegar(para: opcao)
        }
    }
}
