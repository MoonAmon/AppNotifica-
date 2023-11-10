//
//  LoginCoordinator.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-10 on 10/11/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator{
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    var navigationController: UINavigationController
}
