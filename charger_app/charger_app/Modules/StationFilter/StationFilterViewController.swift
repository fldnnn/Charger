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

    // MARK: - Properties
    var presenter: StationFilter.Presenter!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    TODO: will be implemented
    @IBAction private func acButtonPressed(_ sender: Any) {
    }
    @IBAction private func dcButtonPressed(_ sender: Any) {
    }
    @IBAction private func type2ButtonPressed(_ sender: Any) {
    }
    @IBAction private func ccsButtonPressed(_ sender: Any) {
    }
    @IBAction private func chademoButtonPressed(_ sender: Any) {
    }
    @IBAction private func carparkButtonPressed(_ sender: Any) {
    }
    @IBAction private func buffetButtonPressed(_ sender: Any) {
    }
    @IBAction private func wifiButtonPressed(_ sender: Any) {
    }
    @IBAction private func filterButtonPressed(_ sender: Any) {
    }
}

extension StationFilterViewController: StationFilterViewProtocol {
}
