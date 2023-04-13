//
//  ViewController.swift
//  LoginApp
//
//  Created by DARYA on 2/15/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    
    private let user = User.getUser()
    
    // MARK: - Override Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBar = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBar.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user.person.name
            } else if let navigationVC = viewController as? UINavigationController {
                guard let infoVC = navigationVC.topViewController as? InfoVeiwController else { return }
                infoVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    
    @IBAction func logInButtonPressed() {
        if userNameTextField.text != user.login || passwordTextField.text != user.password {
            alert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotUserName() {
        alert(
            title: "Oops!",
            message: "Your name is \(user.login)"
        )
    }
    
    @IBAction func forgotPassword() {
        alert(
            title: "Oops!",
            message: "Your name is \(user.password)"
        )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    // MARK: - Private Methods
    
    private func alert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}


