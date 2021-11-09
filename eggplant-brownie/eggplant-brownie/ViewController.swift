//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Bruno Cassiano on 30/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField!
    @IBOutlet var felicidadeTextField: UITextField!
    
    @IBAction func Adicionar(_ sender: Any) {
        var nome = nomeTextField.text
        var felicidade = felicidadeTextField.text
        print("Comi \(nome) e fiquei com felicidade \(felicidade)!")
    }
    


}

