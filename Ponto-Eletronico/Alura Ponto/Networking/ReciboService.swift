//
//  ReciboService.swift
//  Alura Ponto
//
//  Created by Bruno Cassiano on 18/04/22.
//

import Foundation
import Alamofire

class ReciboService {
    
    func get() {
        AF.request("http://localhost:8080/recibos", method:  .get, headers: ["Accept":"application/json"]).responseJSON { resposta in
            switch resposta.result {
            case .success(let json):
                
                if let listaDeRecibos = json as? [[String]] {
                    print (listaDeRecibos)
                }
                break
            case .failure(let error):
                print(error.localizedDescription)
                break
            }
        }
    }
    
    func post(_ recibo: Recibo, completion: @escaping(_ salvo: Bool) -> Void) {
        
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
        
        guard let body = try? JSONSerialization.data(withJSONObject: parametros, options: []) else { return }
        
        guard let url = URL(string: baseURL + path) else { return }
            
        var requisicao = URLRequest(url: url)
            requisicao.httpMethod = "POST"
            requisicao.setValue("application/json ", forHTTPHeaderField: "Content-Type")
            requisicao.httpBody = body
        
        URLSession.shared.dataTask(with: requisicao) { data, resposta, error in
           
            if error == nil {
                completion(true)
                
                return
            }
            
            completion(false)
            
        }.resume()
    }
}
