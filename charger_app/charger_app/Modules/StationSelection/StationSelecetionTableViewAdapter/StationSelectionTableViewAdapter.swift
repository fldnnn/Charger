//
//  StationSelectionTableViewAdapter.swift
//  charger_app
//
//  Created by Fulden Onan on 11.07.2022.
//
 
import UIKit

class StationSelectionTableViewAdapter: NSObject {
    private let presenter: StationSelection.Presenter!

    init(presenter: StationSelection.Presenter) {
        self.presenter = presenter
    }
    
    private func setupStationTableViewCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let identifier = "StationTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        if let cell = cell as? StationTableViewCell {
            cell.setup(with: getStationList()[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}

extension StationSelectionTableViewAdapter {
    func itemCount() -> Int {
        getStationList().count
    }

    func getStationList() -> [Station] {
        presenter.getStationList()
    }
}

extension StationSelectionTableViewAdapter: UITableViewDelegate, UITableViewDataSource {

    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        setupStationTableViewCell(tableView: tableView, indexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.onStationCellPressed(with: getStationList()[indexPath.row])
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50.0
    }
}

