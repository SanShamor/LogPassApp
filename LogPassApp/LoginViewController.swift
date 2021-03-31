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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeValue = loginTextField.text!
    }
    
    @IBAction func loginButtonPressed() {
        if loginTextField.text != "admin" || passwordTextField.text != "12345" {
         showAlert(with: "Incorrect data", and: "please, enter true login and password")
        } else {
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotLogButton() {
        showAlert(with: "Correct LOGIN is:", and: "admin")
    }
    @IBAction func forgotPassButton() {
        showAlert(with: "Correct PASSWORD is:", and: "12345")
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        //guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        loginTextField.text = ""
        passwordTextField.text = ""
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

