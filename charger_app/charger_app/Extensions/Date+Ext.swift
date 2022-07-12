//
//  Date+Ext.swift
//  charger_app
//
//  Created by Fulden Onan on 11.07.2022.
//

import Foundation

extension Date {
    func toFormattedString() -> String {
        let dateString = "\(Date())"
        let formattedDateString = dateString.components(separatedBy: " ")
        return formattedDateString[0]
    }
}
