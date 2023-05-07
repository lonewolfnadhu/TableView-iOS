//
//  DetailsViewController.swift
//  Table View Project
//
//  Created by Nadir Shah on 07/05/2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var catchphraseLabel: UILabel!
    @IBOutlet weak var profileImageValue: UIImageView!

    
    var titleValue: String?
    var catchphraseValue: String?
    var profileValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Title: \(titleValue), Catchphrase: \(catchphraseValue) and Profile: \(profileValue)")
    }
}
