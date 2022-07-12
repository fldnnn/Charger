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
        if let socketCount = station.socketCount {
            socketNumberLabel.text = "\(socketCount) / 3"
        }
        if let distance = station.distanceInKM {
            distanceLabel.text = "\(distance.getCleanDistance()) km"
        }
        if let stationName = station.stationName {
            stationNameLabel.text = "\(stationName)"
        }
    }
}
