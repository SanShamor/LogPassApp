//
//  DreadnoughtViewContoller.swift
//  LogPassApp
//
//  Created by Александр on 07.04.2021.
//

import UIKit

class DreadnoughtViewContoller: UIViewController {

    @IBOutlet weak var addInfoLabel: UILabel!
    
    var dreadValue: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.addInfoLabel.layer.masksToBounds = true
        self.addInfoLabel.layer.cornerRadius = self.addInfoLabel.bounds.width / 12
        
        addInfoLabel.text = dreadValue.person.personAddInfo
    }
}
