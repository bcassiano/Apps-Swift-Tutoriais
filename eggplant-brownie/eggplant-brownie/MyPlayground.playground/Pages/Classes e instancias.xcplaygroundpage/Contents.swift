//: [Previous](@previous)

import UIKit

//let nome: String = "Macarrão"
//let felicidade: String = "5"
//
////Criar segunda refeição
//
//let nome2: String = "Churros"
//let felicidade2: String = "4"

//------------------------------------

//Classes é o conceito de orientação objetos
//Criar uma classe que agrupe essas caracteristicas

class Refeicao { //Estrutura ou classe que contenham as caracteristicas
    var nome: String?
    var felicidade: String?
    
    
}

//instaciando uma classe:

//let refeicao: Refeicao = Refeicao()
// ou
let refeicao = Refeicao()
refeicao.nome = "Macarrao"

//Cuidado com o force unWarap
//print(refeicao.nome!)

if refeicao.nome != nil {
    print(refeicao.nome!)
}

// boa praticas para extrair valores opcionais

if let nome = refeicao.nome {
    print(nome)
}

// guard let

func exibeNomeDaRefeicao() {
    if let nome = refeicao.nome{
        print(nome)
    }
    
    guard let nome = refeicao.nome else {
        return
    }
    
    print(nome)
}

exibeNomeDaRefeicao()
//: [Next](@next)
