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
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = welcomeVC.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.welcomeValue = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! UserInfoViewController
                userInfoVC.welcomeValue = user
            }
        }
    }
    
    @IBAction func loginButtonPressed() {
        if loginTextField.text != user.login || passwordTextField.text != user.password {
            showAlert(with: "Incorrect data", and: "Please, enter log/pass")
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func forgotLogButton() {
        showAlert(with: "Correct LOGIN is:", and: user.login)
    }
    @IBAction func forgotPassButton() {
        showAlert(with: "Correct PASSWORD is:", and: user.password)
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
}

// MARK: - extension
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

