//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Bruno Cassiano on 18/11/21.
//

import UIKit

class RefeicoesTablaViewController: UITableViewController {
    
    let refeicoes = [Refeicao(nome: "Macarrão", felicidade: 5), Refeicao(nome: "Hamburguer", felicidade: 5), Refeicao(nome: "Ovo", felicidade: 5)]
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        
        return celula
    }
}
