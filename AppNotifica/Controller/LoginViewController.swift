//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC12 on 05/06/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - Clousures
    var onRegisterTap: (() -> Void)?
    
    //criando uma variavel do tipo LoginView
    lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        return loginView
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
    //é executado quando esta carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Logar"
        
        self.navigationController?.navigationBar.prefersLargeTitles=true
        
    }
}
