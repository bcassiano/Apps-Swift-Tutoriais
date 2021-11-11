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
    var nome: String? // Quando eu nao quiser o valor posso usar o "?" para opcional
    var felicidade: String?
    
    
}

//instaciando uma classe:

//let refeicao: Refeicao = Refeicao()
// ou
let refeicao = Refeicao()// <-- este é o tipo da minha class"Refeição()"
    refeicao.nome = "Macarrão"

//Cuidado com o forced unWarap
//print(refeicao.nome!)
if refeicao.nome != nil { //não é o mais comum de se utilizar
    print(refeicao.nome!)
}

// boa praticas para extrair valores opcionais
if let nome = refeicao.nome { //let cria uma variavel com o mesmo nome caso ela exista
    print(nome)
}

// guard let
func exibeNomeDaRefeicao() {
    if let nome = refeicao.nome{ //ao criar o if let é possível localizar apenas no scopo do IF
        print(nome)
    }
    
    guard let nome = refeicao.nome else { // no Caso do guard let pode ser utilizado fora do scopo
        return
    }
    
    print(nome)
}

exibeNomeDaRefeicao()

let numero = Int("5")
if let n = numero {
    print (n)
}else{
print("erro ao converter string para INT")
    
}


//: [Next](@next)
