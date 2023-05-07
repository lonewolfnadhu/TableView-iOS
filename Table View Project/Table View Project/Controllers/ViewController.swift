//
//  ViewController.swift
//  Table View Project
//
//  Created by Nadir Shah on 07/05/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let cellIdentifier = "ReusableCell"
    let segueValue = "BasicToDetailsVC"
    
    var data:[Data] = [
        Data(name: "Batman"),
        Data(name: "Black Adam"),
        Data(name: "Black Panther"),
        Data(name: "Flash"),
        Data(name: "Green Arrow"),
        Data(name: "Hulk"),
        Data(name: "Joker"),
        Data(name: "Spiderman"),
        Data(name: "Venom"),
        Data(name: "Wolverine")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = data[indexPath.row].name
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let value = data[indexPath.row].name
        print(value)
        self.performSegue(withIdentifier: segueValue, sender: self)
    }
}
