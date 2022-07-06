//
//  UIView+Ext.swift
//  charger_app
//
//  Created by Fulden Onan on 5.07.2022.
//

import UIKit

extension UIView {
    func setGradientBackground() {
        let colorTop = UIColor.charcoalGrey.cgColor
        let colorBottom = UIColor.dark.cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = bounds

        layer.insertSublayer(gradientLayer, at:0)
    }
}
