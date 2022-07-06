//
//  UITextField+Ext.swift
//  charger_app
//
//  Created by Fulden Onan on 5.07.2022.
//

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
