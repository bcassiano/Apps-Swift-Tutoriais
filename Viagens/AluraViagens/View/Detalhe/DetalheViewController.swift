//
//  DetalheViewController.swift
//  AluraViagens
//
//  Created by Ândriu Felipe Coelho on 05/09/21.
//

import UIKit

class DetalheViewController: UIViewController {

    //MARK: - IBOutlets
    
    @IBOutlet weak var viagemImage: UIImageView!
    @IBOutlet weak var tituloViagemLabel: UILabel!
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    
    //MARK: - Atributos

    var viagem: Viagem?

    //MARK: - View life cycle
    
    class func instanciar(_ viagem: Viagem) -> DetalheViewController {
        let detalhesViewCOntroller = DetalheViewController(nibName: String(describing: self), bundle: nil)
        detalhesViewCOntroller.viagem = viagem
        
        return detalhesViewCOntroller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Actions
    @IBAction func botaoVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
