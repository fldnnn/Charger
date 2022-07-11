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
    var adapter: StationSelectionTableViewAdapter?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        view.setGradientBackground()
        prepareTableView()
    }
    
    private func prepareTableView() {
        stationTableView.delegate = adapter
        stationTableView.dataSource = adapter
        stationTableView.register(UINib(nibName: "StationTableViewCell", bundle: nil), forCellReuseIdentifier: "StationTableViewCell")
    }
}

extension StationSelectionViewController: StationSelectionViewProtocol {
    func reloadTableView() {
        stationTableView.reloadData()
    }
}
