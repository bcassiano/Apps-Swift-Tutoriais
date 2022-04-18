//
//  ReciboService.swift
//  Alura Ponto
//
//  Created by Bruno Cassiano on 18/04/22.
//

import Foundation

class ReciboService {
    
    func post(_ recibo: Recibo) {
        
        let baseURL = "http://localhost:8080/"
        let path = "recibos"
        
        let parametros: [String: Any] = [
            "data": FormatadorDeData().getData(recibo.data),
            "status": recibo.status,
            "localizacao": [
                "latitude": recibo.latitude,
                "longitude": recibo.longitude
            ]
        ]
        
        guard let body = try? JSONSerialization.data(withJSONObject: parametros, options: []) else { return}
        
        
    }
}
