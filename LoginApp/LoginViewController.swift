//
//  ViewController.swift
//  LoginApp
//
//  Created by Misha Shkitov on 30.06.23.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
        userNameTextField.autocorrectionType = .no
        passwordTextField.autocorrectionType = .no
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        if let touch = touches.first, !userNameTextField.frame.contains(touch.location(in: view)) {
            userNameTextField.resignFirstResponder()
        }
        if let touch = touches.first, !passwordTextField.frame.contains(touch.location(in: view)) {
            passwordTextField.resignFirstResponder()
        }
    }
    
    // MARK: - IBActions
    
    @IBAction func loginButtonTapped() {
        
        let currentLogin = userNameTextField.text?.lowercased()
        let correctLogin = "user"
        let correctPassword = "1234"
        
        if currentLogin != correctLogin || passwordTextField.text != correctPassword {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please use User for login, 1234 for password")
        }
        
    }
    
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(withTitle: "Ooops!", andMessage: "Your name is User 😉")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(withTitle: "Ooops!", andMessage: "Your password is 1234")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
}

// MARK: - UIAlertController

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
