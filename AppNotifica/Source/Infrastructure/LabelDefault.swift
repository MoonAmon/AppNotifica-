//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by Dario Pintor on 19/10/22.
//

import Foundation
import UIKit

class LabelDefault : UILabel{
    
    init(text: String){
        super.init(frame: .zero)
        initDefault(text: text, fontName: "SFProDisplay-Light", fontSize: 17)
    }
    
    init(text: String, fontName: String, fontSize: CGFloat) {
        super.init(frame: .zero)
        initDefault(text: text, fontName: fontName, fontSize: fontSize)
    }
   
    
    private func initDefault(text: String, fontName: String, fontSize: CGFloat){
        self.text = text
        self.textColor = .textLabelColor
        if let font = UIFont(name: fontName, size: fontSize) {
            self.font = font
        } else {
            self.font = UIFont.systemFont(ofSize: fontSize)
        }
        self.numberOfLines = 0
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
}
