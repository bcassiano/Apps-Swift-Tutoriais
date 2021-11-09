//: [Previous](@previous)

import UIKit

let nome: String = "Macarrão"
let felicidade: String = "5"

//Criar segunda refeição

let nome2: String = "Churros"
let felicidade2: String = "4"

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


class Refeicao2 {
    var nome: String = "Churros"
    var felicidade: String = "4"
}

var refeicao2 = Refeicao2()
print(refeicao2.nome)

//: [Next](@next)
