//
//  ViewController.swift
//  tabela-dinamica-refeicoes
//
//  Created by Bruno Cassiano on 18/11/21.
//

import UIKit

class ViewController: UITableViewController {
    
    let refeicoes = ["Churros, Macarrão, Pizza"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Foi carregado")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)

        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao
        
        
        return celula
    }
}

