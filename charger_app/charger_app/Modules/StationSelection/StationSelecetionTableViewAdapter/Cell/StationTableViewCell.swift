//
//  StationTableViewCell.swift
//  charger_app
//
//  Created by Fulden Onan on 10.07.2022.
//

import UIKit

class StationTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var socketNumberLabel: UILabel!
    @IBOutlet private weak var distanceLabel: UILabel!
    @IBOutlet private weak var stationNameLabel: UILabel!
    @IBOutlet private weak var stationTypeImageView: UIImageView!
    
    func setup(with station: Station) {
        socketNumberLabel.text = "\(String(describing: station.socketCount))"
        distanceLabel.text = "\(String(describing: station.distanceInKM))"
        // TODO: set name
    }
}
