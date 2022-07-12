//
//  StationSelectionConstants.swift
//  charger_app
//
//  Created by Fulden Onan on 12.07.2022.
//

import Foundation

enum ChargeType: String {
    case ac = "AC"
    case dc = "DC"
    case acdc = "ACDC"
    
    var imageName: String {
        switch self {
        case .ac: return "icon_ac"
        case .dc: return "icon_dc"
        case .acdc: return "icon_ac_dc"
        }
    }
}
