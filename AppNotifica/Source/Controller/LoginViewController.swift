//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-10 on 10/11/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    // Variable getting the login screen
    var viewMain = LoginView()
    override func loadView() {
        // Override the new screen to LoginView
        self.view = viewMain
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
