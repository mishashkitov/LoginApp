//
//  ViewController.swift
//  LoginApp
//
//  Created by Misha Shkitov on 30.06.23.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTextField.text
    }
    
    // MARK: - IBActions
    
    @IBAction func loginButtonTapped() {
        
    }
    
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(withTitle: "Ooops!", andMessage: "Your name is User 😉")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(withTitle: "Ooops!", andMessage: "Your password is 1234")
    }
}

// MARK: - UIAlertController

extension MainViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
