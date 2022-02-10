//: [Previous](@previous)

import Foundation
import UIKit
class Refeicao {
 
    // MARK: - Atributos
    
    var nome: String
    var felicidade: String
    var itens: Array<Item> = []
    
    
    // MARK: - Construtor
    
    init(nome: String, felicidade: String){
        self.nome = nome
        self.felicidade = felicidade
        
    }

// MARK: - Metodos

func totalDeCalorias() -> Double {
    var total = 0.0
    
    for item in itens {
        total += item.calorias
        }
    return total
    }
    
}
class Item {
    var nome: String
    var calorias: Double
   
    
    init(nome: String, calorias: Double){
        self.nome = nome
        self.calorias = calorias
        //print(nome)
    }
    
    
}

let arroz = Item(nome: "Arroz", calorias: 52.0)
let feijao = Item(nome: "Feijao", calorias: 66.9)
let carne = Item(nome: "Contra-Filé", calorias: 200.01)

let refeicao = Refeicao(nome: "Almoço", felicidade: "5")
refeicao.itens.append(arroz)
refeicao.itens.append(feijao)
refeicao.itens.append(carne)

print(refeicao.nome)
if let primeiroItemDaLista = refeicao.itens.first {
    print(primeiroItemDaLista.nome)
}

print (refeicao.totalDeCalorias())

//: [Next](@next)
