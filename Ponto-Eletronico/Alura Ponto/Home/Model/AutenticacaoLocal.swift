//
//  AutenticacaoLocal.swift
//  Alura Ponto
//
//  Created by Bruno Cassiano on 09/03/22.
//

import Foundation
import LocalAuthentication

class AutenticacaoLocal {
 
    private let authenticatorContext = LAContext()
    private var error: NSError?
    
    
    func autorizaUsuario(completion: @escaping(_ autenticacao: Bool) -> Void) {
        if authenticatorContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            authenticatorContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "É necessário autenticação para apagar um recibo") { sucesso, error in
                
                completion(sucesso)
        
            }
        }
    }
}
