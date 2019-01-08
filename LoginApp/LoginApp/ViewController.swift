//
//  ViewController.swift
//  LoginApp
//
//  Created by Anastasia on 1/7/19.
//  Copyright © 2019 Anastasia. All rights reserved.
//

import UIKit

let users: [String: String] = ["Anastasia" : "12345"]

class ViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton! {
        didSet {
            loginButton.layer.cornerRadius = 8.0
        }
    }
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBAction func buttonLogin(_ sender: UIButton) {
        let username = textFieldUserName.text ?? ""
        let password = textFieldPassword.text ?? ""
        
        if users[username] == password {
            UserDefaults.standard.set(username, forKey: "username")
            showLogin()
        } else {
            self.labelMessage.text = "Invalid username or password"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.string(forKey: "username") != nil {
            showLogin()
        }
    }
    
    private func showLogin() {
        let profileViewController = storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        navigationController?.pushViewController(profileViewController, animated: true)
    }
}


