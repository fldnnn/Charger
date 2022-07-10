//
//  StationSelectionViewController.swift
//  charger_app
//
//  Created by Fulden Onan on 10.07.2022.
//  
//

import UIKit

class StationSelectionViewController: UIViewController {
    @IBOutlet private weak var stationSearchBar: UISearchBar!
    @IBOutlet private weak var searchResultLabel: UILabel!
    @IBOutlet private weak var stationTableView: UITableView!
    
    // MARK: - Properties
    var presenter: StationSelection.Presenter!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension StationSelectionViewController: StationSelectionViewProtocol {
    // TODO: implement view output methods
}
