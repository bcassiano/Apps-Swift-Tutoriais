//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Bruno Cassiano on 30/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    @IBAction func Adicionar(_ sender: Any) {
        let nome = nomeTextField?.text
        let felicidade : Int! = Int(felicidadeTextField!.text!)
        
        let refeicao = Refeicao(nome: nome!, felicidade: felicidade)
        
        print("Comi \(refeicao.nome) e fiquei com felicidade \(refeicao.felicidade)!")
    }
}

