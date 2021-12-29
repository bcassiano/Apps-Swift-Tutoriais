//
//  RemoveRefeicaoViewController.swift
//  eggplant-brownie
//
//  Created by Bruno Cassiano on 29/12/21.
//

import UIKit

class RemoveRefeicaoViewController {

let controller: UIViewController

init(controller: UIViewController) {
    self.controller = controller
}

    func exibe (_ refeicao: Refeicao, handler: @escaping (UIAlertAction) -> Void) {
        let alerta = UIAlertController(title: refeicao.nome, message: refeicao.detalhes(), preferredStyle: .alert) //cria uma interface para o usuario mostrando qual refeicao foi precionado - UIAlertController
        
        let botaoCancelar = UIAlertAction(title: "Cancelar", style: .cancel) //neste caso posso a apagar o nil já que ele é opcional de acordo com o Handler
        alerta.addAction(botaoCancelar)
        
        let botaoRemover = UIAlertAction(title: "Remover", style: .destructive, handler: handler)
        
        alerta.addAction(botaoRemover)
        
        controller.present(alerta, animated: true, completion: nil)
    }
}

    
