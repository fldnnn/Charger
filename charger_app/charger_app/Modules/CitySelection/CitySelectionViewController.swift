//
//  CitySelectionViewController.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//  
//

import UIKit

class CitySelectionViewController: UIViewController {

    // MARK: - Properties
    var presenter: CitySelection.Presenter!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension CitySelectionViewController: CitySelectionViewProtocol {
    // TODO: implement view output methods
}
