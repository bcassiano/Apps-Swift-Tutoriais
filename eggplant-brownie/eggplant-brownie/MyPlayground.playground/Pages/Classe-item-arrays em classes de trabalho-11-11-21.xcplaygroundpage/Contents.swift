//: [Previous](@previous)

import Foundation
import UIKit
class Refeicao {
 
    var nome: String
    var felicidade: String
    var itens: Array<Item> = []
    
    init(nome: String, felicidade: String){
        self.nome = nome
        self.felicidade = felicidade
        print(nome)
    }
}

class Item {
    var nome: String
    var calorias: Double
   
    
    init(nome: String, calorias: Double){
        self.nome = nome
        self.calorias = calorias
        print(nome)
    }
    
}

let arroz = Item(nome: "Arroz", calorias: 52.0)
let feijao = Item(nome: "Feijao", calorias: 66.9)
let carne = Item(nome: "Contra-Filé", calorias: 200.01)

//: [Next](@next)
