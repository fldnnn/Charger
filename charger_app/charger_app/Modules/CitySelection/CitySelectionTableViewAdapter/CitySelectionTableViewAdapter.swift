//
//  CitySelectionTableViewAdapter.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//

import UIKit

class CitySelectionTableViewAdapter: NSObject {
    private let presenter: CitySelection.Presenter!

    init(presenter: CitySelection.Presenter) {
        self.presenter = presenter
    }
    
    private func setupCityTableViewCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let identifier = "CityTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        if let cell = cell as? CityTableViewCell {
            cell.setup(cityName: getCityList()[indexPath.row])

            return cell
        }
        return UITableViewCell()
    }
}

extension CitySelectionTableViewAdapter {
    func itemCount() -> Int {
        getCityList().count
    }

    func getCityList() -> [String] {
        presenter.getCityList()
    }
}

extension CitySelectionTableViewAdapter: UITableViewDelegate, UITableViewDataSource {

    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        setupCityTableViewCell(tableView: tableView, indexPath: indexPath)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50.0
    }
}
