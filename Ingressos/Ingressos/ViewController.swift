//
//  ViewController.swift
//  Ingressos
//
//  Created by Bruno Cassiano on 20/05/22.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var imagemBanner: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagemBanner.layer.cornerRadius = 10
        self.imagemBanner.layer.masksToBounds = true
    }


}

