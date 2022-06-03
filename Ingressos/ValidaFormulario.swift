//
//  ValidaFormulario.swift
//  Ingressos
//
//  Created by Bruno Cassiano on 02/06/22.
//

import UIKit

class ValidaFormulario: NSObject {

    func verificaTextFieldsPreenchidos(textFields:Array<UITextField>) -> Bool {
        for textField in textFields {
            if textField.text == ""{
                return false
            }
        }
        return true
    }
    
}
