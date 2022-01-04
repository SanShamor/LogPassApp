//
//  UserInfoViewController.swift
//  LogPassApp
//
//  Created by Александр on 07.04.2021.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var closedInfoButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!{
    didSet {
            imageView.layer.cornerRadius = imageView.frame.height / 10
        }
    }

    var welcomeValue: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        closedInfoButton.layer.cornerRadius = 12
        
        InfoLabel.text = welcomeValue.person.personInfo
        
        imageView.image = UIImage(named: welcomeValue.person.image)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? DreadnoughtViewContoller else { return }
        welcomeVC.dreadValue = welcomeValue
    }
    
    
}
