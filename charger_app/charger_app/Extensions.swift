//
//  Extensions.swift
//  charger_app
//
//  Created by Fulden Onan on 2.07.2022.
//

import Foundation
import UIKit
 
extension UITextField {
     
    func addBottomLayer() {
        let bottomLine = CALayer()
//        let width = CGFloat(1.0)
        bottomLine.frame = CGRect(x: 0.0, y: self.frame.size.height - 1.0, width: self.frame.size.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.black.cgColor
        borderStyle = .none
        layer.addSublayer(bottomLine)
    }
}
 
extension UIColor {
     
    static let main = UIColor(red: 0, green: 1, blue: 0, alpha: 1.0)
    static let state = UIColor(red: 1, green: 44/255, blue: 85/255, alpha: 1.0)
    static let dark = UIColor(red: 26/255, green: 30/255, blue: 37/255, alpha: 1.0)
    static let charcoalGrey = UIColor(red: 67/255, green: 73/255, blue: 85/255, alpha: 1.0)
    static let grayScale = UIColor(red: 183/255, green: 189/255, blue: 203/255, alpha: 1.0)
    
}
 
extension UIView {
    //@discardableResult

    func setGradientBackground() {
        let colorTop =  UIColor.charcoalGrey.cgColor
        let colorBottom = UIColor.dark.cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = bounds

        //self.view.layer.insertSublayer(gradientLayer, at:0)
        layer.insertSublayer(gradientLayer, at: 0)
        //return layer
    }
}
