//
//  UIColor+Ext.swift
//  charger_app
//
//  Created by Fulden Onan on 5.07.2022.
//

import UIKit

extension UIColor {
//    static let main = UIColor(red: 0, green: 1, blue: 0, alpha: 1.0)
//    static let state = UIColor(red: 1, green: 44/255, blue: 85/255, alpha: 1.0)
//    static let dark = UIColor(red: 26/255, green: 30/255, blue: 37/255, alpha: 1.0)
//    static let charcoalGrey = UIColor(red: 67/255, green: 73/255, blue: 85/255, alpha: 1.0)
//    static let grayScale = UIColor(red: 183/255, green: 189/255, blue: 203/255, alpha: 1.0)
    
    static func defaultColor() -> UIColor {
        UIColor.white
    }

    static var main: UIColor {
        if #available(iOS 11.0, *) {
            return UIColor(named: "main") ?? defaultColor()
        } else {
            return UIColor(red: 0, green: 255, blue: 0, alpha: 1.0)
        }
    }

    static var state: UIColor {
        if #available(iOS 11.0, *) {
            return UIColor(named: "state") ?? defaultColor()
        } else {
            return UIColor(red: 255, green: 44, blue: 85, alpha: 1.0)
        }
    }

    static var dark: UIColor {
        if #available(iOS 11.0, *) {
            return UIColor(named: "dark") ?? defaultColor()
        } else {
            return UIColor(red: 26, green: 30, blue: 37, alpha: 1.0)
        }
    }

    static var charcoalGrey: UIColor {
        if #available(iOS 11.0, *) {
            return UIColor(named: "charcoal_grey") ?? defaultColor()
        } else {
            return UIColor(red: 67, green: 73, blue: 85, alpha: 1.0)
        }
    }

    static var grayScale: UIColor {
        if #available(iOS 11.0, *) {
            return UIColor(named: "gray_scale") ?? defaultColor()
        } else {
            return UIColor(red: 183, green: 189, blue: 203, alpha: 1.0)
        }
    }
}
