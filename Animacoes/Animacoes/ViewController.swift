//
//  ViewController.swift
//  Animacoes
//
//  Created by Bruno Cassiano on 28/04/22.
//

import UIKit

class ViewController: UIViewController {
    
        //MARK: - IBOtlets
    
    @IBOutlet weak var viewAnimada: UIView!
    
        //MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
        //MARK: - IBAction
    
    @IBAction func botaoIniciarAnimacao(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.0, options: [.curveLinear], animations: {
            self.viewAnimada.frame = CGRect(x: 285.0, y:
                self.viewAnimada.frame.origin.y, width:
                self.viewAnimada.frame.size.width, height:
                self.viewAnimada.frame.size.height)

        }, completion: nil )

    }
}

