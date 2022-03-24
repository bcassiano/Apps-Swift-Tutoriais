//
//  MapaViewController.swift
//  Alura Ponto
//
//  Created by Bruno Cassiano on 24/03/22.
//

import UIKit

class MapaViewController: UIViewController {

    // MARK: - Atributos
    
    private var recibo: Recibo?
    
    // MARK: - Instanciar
    
    class func instanciar(_ recibo: Recibo?) -> MapaViewController {
        let controller = MapaViewController(nibName: "MapaViewController", bundle: nil)
        controller.recibo = recibo
    
        return controller
    }
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Métodos
    
    

}
