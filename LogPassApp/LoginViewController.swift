//
//  ViewController.swift
//  LogPassApp
//
//  Created by Александр on 31.03.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func loginButtonPressed() {
        if loginTextField.text == "admin" && passwordTextField.text == "12345" {
        } else {
            showAlert(with: "Incorrect data", and: "plese, enter true login and password")
        }
    }
    
    @IBAction func forgotLogButton() {
        showAlert(with: "Correct LOGIN is:", and: "admin")
    }
    @IBAction func forgotPassButton() {
        showAlert(with: "Correct PASSWORD is:", and: "12345")
    }
    
}

// MARK: - extension
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.loginTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

