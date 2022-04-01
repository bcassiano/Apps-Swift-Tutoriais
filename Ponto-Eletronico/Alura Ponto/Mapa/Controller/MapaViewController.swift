//
//  MapaViewController.swift
//  Alura Ponto
//
//  Created by Bruno Cassiano on 24/03/22.
//

import UIKit
import MapKit

class MapaViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var mapa: MKMapView!
    
    

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
    
    func setRegiao() {
        
        guard let latitude = recibo?.latitude, let longitude = recibo?.longitude else {
            return
        }
        
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        
        let regiao = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: span)
        mapa.setRegion(regiao, animated: true )
    }

}
