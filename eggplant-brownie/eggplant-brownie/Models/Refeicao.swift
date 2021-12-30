//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Bruno Cassiano on 18/11/21.
//

import UIKit

class Refeicao: NSObject, NSCoding {

        // MARK: - Atributos
        
        let nome: String
        let felicidade: Int
        var itens: Array<Item> = []
        
        
        // MARK: - Construtor Init
        
    init(nome: String, felicidade: Int, itens: [Item] = []){
            self.nome = nome
            self.felicidade = felicidade
        self.itens = itens
            
        }

    // Mark: - NSCoding
    
    func encode(with coder: NSCoder) {
        coder.encode(nome, forKey: "nome")
        coder.encode(felicidade, forKey: "felicidade")
        coder.encode(itens, forKey: "itens")
    }
    
    required init?(coder: NSCoder) {
        <#code#>
    }
    
    // MARK: - Metodos

    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
            }
        return total
        }
    
    func detalhes() -> String {
        var mensagem = "Felicidade: \(felicidade)"
            for item in itens {
            mensagem += ", \(item.nome) - calorias: \(item.calorias)"
        }
        
        return mensagem
    }
}

