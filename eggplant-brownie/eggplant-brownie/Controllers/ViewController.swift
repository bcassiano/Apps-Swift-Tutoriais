//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Bruno Cassiano on 30/10/21.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    //MARK: - Atributos
    
    var delegate: AdicionaRefeicaoDelegate?
    var itens: [String] = ["Molho de tomate","Queijo","Molho apimentado", "Manjericão"]
    
    //MARK: - IBOutlets
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    
    //MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        celula.textLabel?.text = "Molho de tomate"
        
        let linhaDaTabela = indexPath.row
        let item = itens [linhaDaTabela]
        
        celula.textLabel?.text = item
        
        return celula
        
    }
    
    //MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let celula = tableView.cellForRow(at: indexPath) else {return}
        if celula.accessoryType == .none{
            celula.accessoryType = .checkmark
        }else{
            celula.accessoryType =  .none
        }
        
    }
    
    //MARK: - IBActions
    
    @IBAction func Adicionar(_ sender: Any) {
        
        
//        if let nomeDaRefeicao = nomeTextField?.text, let felicidadeDaRefeicao = felicidadeTextField?.text {
//            let nome = nomeDaRefeicao
//            if let felicidade = Int(felicidadeDaRefeicao) {
//                let refeicao = Refeicao(nome: nome, felicidade: felicidade)
//
//                print("Comi \(refeicao.nome) e fiquei com felicidade \(refeicao.felicidade)!")
//            } else {
//                print ("Erro ao tentar criar a refeição")
//            }
//
//        }
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        print("Comi \(refeicao.nome) e fiquei com felicidade \(refeicao.felicidade)!")
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true) //adiciona nova tela e desaparece com ele. Não empilha.
    }
}
