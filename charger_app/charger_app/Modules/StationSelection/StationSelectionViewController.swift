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
    @IBOutlet private weak var emptyStateView: UIView!
    
    // MARK: - Properties
    var presenter: StationSelection.Presenter!
    var adapter: StationSelectionTableViewAdapter?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        view.setGradientBackground()
        title = "İstasyon Seçin"
        navigationController?.navigationBar.isHidden = false
        addFilterButton()
        prepareTableView()
        stationSearchBar.delegate = self
    }
    
    private func prepareTableView() {
        stationTableView.delegate = adapter
        stationTableView.dataSource = adapter
        stationTableView.register(UINib(nibName: "StationTableViewCell", bundle: nil), forCellReuseIdentifier: "StationTableViewCell")
    }
    
    private func addFilterButton() {
        let filterButton = UIBarButtonItem(title: "Filtrele", style: .plain , target: self, action: #selector(onFilterButtonPressed))
        navigationItem.rightBarButtonItem = filterButton
    }
    
    @objc private func onFilterButtonPressed() {
        presenter?.onFilterButtonPressed()
    }
}

extension StationSelectionViewController: StationSelectionViewProtocol {
    func reloadTableView() {
        stationTableView.reloadData()
    }
    
    func updateUI(with cityName: String, _ stationCount: Int) {
        stationSearchBar.text = cityName
        searchResultLabel.text = "'\(cityName)' şehri için \(stationCount) sonuç gösteriliyor."
    }
    
    func changeEmptyStateVisibility(to isVisible: Bool) {
        emptyStateView.isHidden = isVisible
    }
}

extension StationSelectionViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        presenter?.filterStations(with: searchBar.text ?? "")
    }
}
