//
//  CitySelectionViewController.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//  
//

import UIKit

class CitySelectionViewController: UIViewController {

    @IBOutlet private weak var cityTableView: UITableView!
    @IBOutlet private weak var citySearchBar: UISearchBar!
    
    // MARK: - Properties
    var presenter: CitySelection.Presenter!
    var adapter: CitySelectionTableViewAdapter?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        title = "Şehir Seçiniz"
        navigationController?.navigationBar.isHidden = false
        view.setGradientBackground()
        prepareTableView()
        citySearchBar.delegate = self
    }
    
    private func prepareTableView() {
        cityTableView.delegate = adapter
        cityTableView.dataSource = adapter
        cityTableView.register(UINib(nibName: "CityTableViewCell", bundle: nil), forCellReuseIdentifier: "CityTableViewCell")
    }
}

extension CitySelectionViewController: CitySelectionViewProtocol {
    func reloadTableView() {
        cityTableView.reloadData()
    }
}

extension CitySelectionViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if searchBar.text != "" {
            presenter?.filterCities(with: searchBar.text ?? "")
        }
    }
}
