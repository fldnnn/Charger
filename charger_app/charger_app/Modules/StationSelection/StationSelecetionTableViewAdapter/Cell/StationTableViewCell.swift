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
    
    private var hasACChargeType: Bool = false
    private var hasDCChargeType: Bool = false
    
    private func setImage(with sockets: [Socket]) {
        sockets.forEach({ socket in
            if socket.chargeType == ChargeType.ac.rawValue {
                hasACChargeType = true
            } else if socket.chargeType == ChargeType.dc.rawValue {
                hasDCChargeType = true
            }
        })
        if hasACChargeType, hasDCChargeType {
            stationTypeImageView.image = UIImage(named: ChargeType.acdc.imageName)
        } else if hasACChargeType {
            stationTypeImageView.image = UIImage(named: ChargeType.ac.imageName)
        } else if hasDCChargeType {
            stationTypeImageView.image = UIImage(named: ChargeType.dc.imageName)
        }
    }
    
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
        if let sockets = station.sockets {
            setImage(with: sockets)
        }
    }
}
