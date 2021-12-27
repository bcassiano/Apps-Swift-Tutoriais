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

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AdicionaItensDelegate {
    
    //MARK: - IBOutlet

    @IBOutlet weak var itensTableView: UITableView!
    
    //MARK: - Atributos
    
    var delegate: AdicionaRefeicaoDelegate?
    var itens: [Item] = [Item(nome: "Molho de tomate", calorias: 40.0),
                         Item(nome: "Manjericão", calorias: 40.0),
                         Item(nome: "Queijo", calorias: 40.0),
                         Item(nome: "Molho apimentado", calorias: 40.0),]
    
    var itensSelecionados: [Item] = []
    
    
    //MARK: - IBOutlets
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        let botaoAdicionaItem = UIBarButtonItem(title: "adicionar", style: .plain, target: self, action: #selector(adicionarItens))
        navigationItem.rightBarButtonItem = botaoAdicionaItem
    }
    
    @objc func adicionarItens() {
//        print("Adicionar novo item da lista")
        let adicionarItensViewController = AdicionarItensViewController(delegate: self)
        navigationController?.pushViewController(adicionarItensViewController, animated: true)
    }
    
    func add(_ item: Item) {
        itens.append(item)
        if let tableView = itensTableView {
            itensTableView.reloadData()
        } else {
            
            Alerta(controller: self).exibe(mensagem: "Erro 404")       }
    
    }
    //MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        celula.textLabel?.text = "Molho de tomate"
        
        let linhaDaTabela = indexPath.row
        let item = itens [linhaDaTabela]
        
        celula.textLabel?.text = item.nome
        
        return celula
        
    }
    
    //MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let celula = tableView.cellForRow(at: indexPath) else {return}
        if celula.accessoryType == .none{
            celula.accessoryType = .checkmark
            let linhaDaTabela = indexPath.row
            itensSelecionados.append(itens[linhaDaTabela])
        }else{
            celula.accessoryType =  .none
            
            let item = itens[indexPath.row]
            if let position = itensSelecionados.firstIndex(of: item) {
                itensSelecionados.remove(at: position)
                
                //teste
//
//                for itemSelecionado in itensSelecionados {
//                    print(itemSelecionado.nome)
//                }
            }
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
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade, itens: itensSelecionados)
        
        refeicao.itens = itensSelecionados
        
        print("Comi \(refeicao.nome) e fiquei com felicidade \(refeicao.felicidade)!")
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true) //adiciona nova tela e desaparece com ele. Não empilha.
    }
}

