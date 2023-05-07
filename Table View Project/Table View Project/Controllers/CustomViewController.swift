//
//  CustomViewController.swift
//  Table View Project
//
//  Created by Nadir Shah on 07/05/2023.
//

import UIKit

class CustomViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let cellIdentifier = "CustomResuableCell"
    let cellNibName = "CustomCell"
    
    var customData:[CustomData] = [
        CustomData(title: "Wolverine", catchphrase: "To me, my X-Men.", imageName: "wolverine"),
        CustomData(title: "Batman", catchphrase: "A hero can be anyone.", imageName: "batman"),
        CustomData(title: "Black Panther", catchphrase: "Wakanda forever!", imageName: "black-panther"),
        CustomData(title: "Spiderman", catchphrase: "With great power comes great responsibility.", imageName: "spiderman"),
        CustomData(title: "Green Arrow", catchphrase: "You have failed this city!", imageName: "green-arrow"),
        CustomData(title: "Flash", catchphrase: "The fastest man alive.", imageName: "flash"),
        CustomData(title: "Hulk", catchphrase: "Hulk smash!", imageName: "hulk"),
        CustomData(title: "Joker", catchphrase: "Whatever Doesn't Kill You.", imageName: "joker"),
        CustomData(title: "Venom", catchphrase: "You come in here again...", imageName: "venom"),
        CustomData(title: "Black Adam", catchphrase: "There's no point in fighting", imageName: "black-adam")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: cellNibName, bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
}

extension CustomViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CustomCell
        cell.titleLabel.text = customData[indexPath.row].title
        cell.catchphraseLabel.text = customData[indexPath.row].catchphrase
        cell.profileImageView.image = UIImage(named: customData[indexPath.row].imageName)
        return cell
    }
}

extension CustomViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let value = customData[indexPath.row].imageName
        print(value)
    }
}
