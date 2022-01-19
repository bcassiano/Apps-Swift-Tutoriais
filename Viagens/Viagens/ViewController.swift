//
//  ViewController.swift
//  Viagens
//
//  Created by Bruno Cassiano on 19/01/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viagensTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viagensTableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = "viagem \(indexPath.row)"
        
        return cell
    }
}

