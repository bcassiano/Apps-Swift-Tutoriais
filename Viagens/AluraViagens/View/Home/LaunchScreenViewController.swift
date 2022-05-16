//
//  LaunchScreenViewController.swift
//  AluraViagens
//
//  Created by Bruno Cassiano on 06/05/22.
//

import UIKit

class LaunchScreenViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var constraintTituloTop: NSLayoutConstraint!
    
    
    // MARK: - View life cycle
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        iniciaAnimacao()
    }
    // MARK: - Metodos
    
    func iniciaAnimacao() {
        constraintTituloTop.constant = 300
        UIView.animate(withDuration: 1.0, animations: {
            self.view.layoutIfNeeded()
        }) { (_ ) in
         // TO DO: -
            self.irParaHome()
        }
    }

    func irParaHome() {
        let tabBar = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tab-bar" )
        let navigation = UINavigationController(rootViewController: tabBar)
        navigation.setToolbarHidden(true, animated: false) 
        present(navigation,animated: true, completion: nil)
    }
    
}
