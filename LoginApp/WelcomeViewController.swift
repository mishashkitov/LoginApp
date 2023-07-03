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
        setupGradient()
    }
    
    
    // MARK: - IBActions
    @IBAction func LogOutButtonDidTapped() {

    }
    
    // MARK: - Private Methods
    private func setupGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        
        let startColor = UIColor.red.withAlphaComponent(0.3).cgColor
        let endColor = UIColor.blue.withAlphaComponent(0.3).cgColor
        gradientLayer.colors = [startColor, endColor]
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
