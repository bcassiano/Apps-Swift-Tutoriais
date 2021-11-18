//
//  Item.swift
//  eggplant-brownie
//
//  Created by Bruno Cassiano on 18/11/21.
//

import UIKit

class Item: NSObject {
    // MARK: - Atributos
    let nome: String
    let calorias: Double
   
    // MARK: - Init
    init(nome: String, calorias: Double){
        self.nome = nome
        self.calorias = calorias
        //print(nome)
    }
}
