//
//  AdicionarItensViewController.swift
//  eggplant-brownie
//
//  Created by Bruno Cassiano on 15/12/21.
//

import UIKit

class AdicionarItensViewController: UIViewController {

    //MARK: - Metodo View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - IBAction
    
    @IBAction func adicionarItem(_ sender: Any) {
        // navegar para proxima tela: navigationController.push()
        // voltar para tela anterior: navigationController.pop()
        let item = Item(nome: <#T##String#>, calorias: <#T##Double#>)
        navigationController?.popViewController(animated: true)
        
    }
}
