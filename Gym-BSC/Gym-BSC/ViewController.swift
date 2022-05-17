//
//  ViewController.swift
//  Gym-BSC
//
//  Created by Bruno Cassiano on 17/05/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = "Exercicíos \(indexPath.row)"
        
        return cell
    }
}


