//
//  Alerta.swift
//  eggplant-brownie
//
//  Created by Bruno Cassiano on 27/12/21.
//

import Foundation

import UIKit

class Alerta {
    
    let controller: UIViewController
    
    init (controller: UIViewController) {
        self.controller = controller
        
    }
    
    func exibe (titulo: String = "Atenção", mensagem: String) {
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alerta.addAction(ok)
        controller.present(alerta, animated: true, completion: nil)
        
        
    }
}
