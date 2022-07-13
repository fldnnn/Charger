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
    @IBOutlet private weak var emptyStateView: UIView!
    
    // MARK: - Properties
    var presenter: CitySelection.Presenter!
    var adapter: CitySelectionTableViewAdapter?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
        view.setGradientBackground()
        emptyStateView.setGradientBackground()
        prepareTableView()
        citySearchBar.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Şehir Seçiniz"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        title = ""
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
     
    func changeEmptyStateVisibility(to isVisible: Bool) {
        emptyStateView.isHidden = isVisible
    }
}

extension CitySelectionViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        presenter?.filterCities(with: searchBar.text ?? "")
    }
}
