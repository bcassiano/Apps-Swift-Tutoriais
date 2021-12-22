//
//  AdicionarItensViewController.swift
//  eggplant-brownie
//
//  Created by Bruno Cassiano on 15/12/21.
//

import UIKit

protocol AdicionaItensDelegate {
    func add (_ item: Item)
}

class AdicionarItensViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var caloriasTextField: UITextField!
    
    //MARK: - Atributos
    
    var delegate: AdicionaItensDelegate?
    
    init(delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdicionarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)    }
    
    
    //MARK: - Metodo View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - IBAction
    
    @IBAction func adicionarItem(_ sender: Any) {
        
        guard let nome = nomeTextField.text, let calorias = caloriasTextField.text else {
            return
        }
        if let numeroDeCalorias = Double(calorias) {
        
        // navegar para proxima tela: navigationController.push()
        // voltar para tela anterior: navigationController.pop()
        let item = Item(nome: nome, calorias: numeroDeCalorias)
            delegate?.add(item) // neste caso a opcional"delegate?"funciona caso haja valor em "delegate ele continua .add se não, ele para e não faz nada e não tem crash no app. Este pode ser utilizado no lugar de if let e guard let"
        navigationController?.popViewController(animated: true)
        
        }
    }
}
