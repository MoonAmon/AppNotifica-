//
//  LoginView.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-10 on 10/11/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        
        setupVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupVisualElements() {
        let loginImage: UIImageView = {
            let image = UIImageView()
            image.image = UIImage(named: "")
            image.contentMode = .scaleAspectFit
            image.translatesAutoresizingMaskIntoConstraints = false
            
            return image
        }()
        
        let imageLabel: UILabel = {
            let label = UILabel()
            label.text = "Registre e gerencia as ocorrências do seu IF"
            label.textColor = UIColor(red: 138/255, green: 138/255, blue: 142/255, alpha: 1)
            label.textAlignment = .center
            label.font = UIFont(name: "SFProDisplay-Light", size: 17)
            label.translatesAutoresizingMaskIntoConstraints = false
            
            return label
        }()
        
        let emailTextField: UITextField = {
            let email = UITextField()
            
        }()
        
        self.addSubview(loginImage)
        self.addSubview(imageLabel)
        
        NSLayoutConstraint.activate([
            loginImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            loginImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginImage.widthAnchor.constraint(equalToConstant: 274.99),
            loginImage.heightAnchor.constraint(equalToConstant: 82),
            
            imageLabel.topAnchor.constraint(equalTo: loginImage.bottomAnchor, constant: 5),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            emailTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)
        ])
    }
}
