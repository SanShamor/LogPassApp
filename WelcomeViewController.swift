//
//  WelcomeViewController.swift
//  LogPassApp
//
//  Created by Александр on 31.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    var welcomeValue: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutButton.layer.cornerRadius = 10
        
        welcomeLabel.text = "Славься, почтенный \(welcomeValue.person.fullname)!"
    }
    

}
