//
//  CityTableViewCell.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//

import UIKit

class CityTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var lblCityName: UILabel!

    func setup(cityName: String) {
        lblCityName.text = cityName
    }
}
