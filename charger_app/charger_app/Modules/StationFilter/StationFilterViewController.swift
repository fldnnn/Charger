//
//  StationFilterViewController.swift
//  charger_app
//
//  Created by Fulden Onan on 12.07.2022.
//  
//

import UIKit

class StationFilterViewController: UIViewController {

    @IBOutlet private weak var chargeTypeLabel: UILabel!
    @IBOutlet private weak var socketType: UILabel!
    @IBOutlet private weak var distanceLabel: UILabel!
    @IBOutlet private weak var servicesLabel: UILabel!
    @IBOutlet private weak var acButton: UIButton!
    @IBOutlet private weak var dcButton: UIButton!
    @IBOutlet private weak var type2Button: UIButton!
    @IBOutlet private weak var cscButton: UIButton!
    @IBOutlet private weak var chademoButton: UIButton!
    @IBOutlet private weak var carparkButton: UIButton!
    @IBOutlet private weak var buffetButton: UIButton!
    @IBOutlet private weak var wifiButton: UIButton!
    
    // MARK: - Properties
    var presenter: StationFilter.Presenter!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    TODO: will be implemented
    @IBAction private func acButtonPressed(_ sender: Any) {
        acButton.isSelected = !acButton.isSelected
        if acButton.isSelected {
            presenter?.setChargeType(to: ChargeType.ac)
        } else {
            presenter?.removeChargeType(of: ChargeType.ac)
        }
    }
    
    @IBAction private func dcButtonPressed(_ sender: Any) {
        dcButton.isSelected = !dcButton.isSelected
        if dcButton.isSelected {
            presenter?.setChargeType(to: ChargeType.dc)
        } else {
            presenter?.removeChargeType(of: ChargeType.dc)
        }
    }
    
    @IBAction private func type2ButtonPressed(_ sender: Any) {
        type2Button.isSelected = !type2Button.isSelected
        if type2Button.isSelected {
            presenter?.setSocketType(to: SocketType.type2)
        } else {
            presenter?.removeSocketType(of: SocketType.type2)
        }
    }
    
    @IBAction private func cscButtonPressed(_ sender: Any) {
        cscButton.isSelected = !cscButton.isSelected
        if cscButton.isSelected {
            presenter?.setSocketType(to: SocketType.csc)
        } else {
            presenter?.removeSocketType(of: SocketType.csc)
        }
    }

    @IBAction private func chademoButtonPressed(_ sender: Any) {
        chademoButton.isSelected = !chademoButton.isSelected
        if chademoButton.isSelected {
            presenter?.setSocketType(to: SocketType.chademo)
        } else {
            presenter?.removeSocketType(of: SocketType.chademo)
        }
    }
    
    @IBAction private func carparkButtonPressed(_ sender: Any) {
        carparkButton.isSelected = !carparkButton.isSelected
        if carparkButton.isSelected {
            presenter?.setServiceType(to: ServiceType.carpark)
        } else {
            presenter?.removeServiceType(of: ServiceType.carpark)
        }
    }
    
    @IBAction private func buffetButtonPressed(_ sender: Any) {
        buffetButton.isSelected = !buffetButton.isSelected
        if buffetButton.isSelected {
            presenter?.setServiceType(to: ServiceType.buffet)
        } else {
            presenter?.removeServiceType(of: ServiceType.buffet)
        }
    }
    
    @IBAction private func wifiButtonPressed(_ sender: Any) {
        wifiButton.isSelected = !wifiButton.isSelected
        if wifiButton.isSelected {
            presenter?.setServiceType(to: ServiceType.wifi)
        } else {
            presenter?.removeServiceType(of: ServiceType.wifi)
        }
    }
    
    @IBAction private func filterButtonPressed(_ sender: Any) {
        presenter?.onFilterButtonPressed()
    }
}

extension StationFilterViewController: StationFilterViewProtocol {
}
