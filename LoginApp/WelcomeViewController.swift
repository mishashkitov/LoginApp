//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Misha Shkitov on 30.06.23.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var welcomeTextLabel: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTextLabel.text = "Welcome, \(userName ?? "")!"
    }
    
    
    // MARK: - IBActions
    @IBAction func LogOutButtonDidTapped() {

    }
    
}
