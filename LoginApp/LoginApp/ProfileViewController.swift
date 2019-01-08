//
//  ProfileViewController.swift
//  XcodeLoginExample
//
//  Created by Anastasia on 07/01/19.
//  Copyright © 2019 Anastasia. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var labelUserName: UILabel! {
        didSet {
            labelUserName.text = UserDefaults.standard.string(forKey: "username")
        }
    }
    
    @IBAction func buttonLogout(_ sender: UIButton) {
        UserDefaults.standard.set(nil, forKey: "username")
        navigationController?.popViewController(animated: true)
    }
}
