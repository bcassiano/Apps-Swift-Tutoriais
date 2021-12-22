//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Bruno Cassiano on 18/11/21.
//

import UIKit

class Refeicao: NSObject {
    
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

