//
//  WelcomeViewController.swift
//  LogPassApp
//
//  Created by Александр on 31.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    var welcomeValue: String = ""
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "welcome,dear \(welcomeValue)!"
    }
    
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
    
    

}
