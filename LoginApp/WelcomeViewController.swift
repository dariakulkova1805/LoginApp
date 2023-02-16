//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by DARYA on 2/15/23.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet var welcomeLabel: UILabel!
    
    // MARK: - Public Properties
    
    var user = ""
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)"
    }
    
    // MARK: - IB Actions
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}
