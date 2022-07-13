//
//  StationSelectionPresenter.swift
//  charger_app
//
//  Created by Fulden Onan on 10.07.2022.
//  
//

import Foundation

class StationSelectionPresenter {

    // MARK: - Properties
    weak var view: StationSelection.View?
    var router: StationSelection.Router!
    var interactor: StationSelection.Interactor!
    var cityName: String?
    private var allStations: [Station]?
    private var filteredStationsByCityName: [Station]?
    private var filteredStationsByStationName: [Station]?
}

extension StationSelectionPresenter: StationSelectionPresenterProtocol {
    func viewDidLoad() {
        interactor?.fetchStationList(with: cityName ?? "")
    }
    
    func getFilteredStationList() -> [Station] {
        filteredStationsByStationName ?? []
    }
    
    func onStationCellPressed(with: Station) {
        // TODO: navigate to booking date selection
    }
}

extension StationSelectionPresenter: StationSelectionInteractorToPresenterProtocol {
    
    func stationsFetched(_ stationResponse: [Station]) {
        allStations = stationResponse
    }
    
    func stationDetailsFetched(_ stationDetailsResponse: [Station]) {
        filteredStationsByCityName = stationDetailsResponse
        filteredStationsByStationName = filteredStationsByCityName
        view?.updateUI(with: cityName ?? "", filteredStationsByCityName?.count ?? 0)
        view?.reloadTableView()
    }
    
    func filterStations(with searchTerm: String) {
        filteredStationsByStationName = filteredStationsByCityName?.filter({
            if let stationName = $0.stationName {
                return stationName.contains(searchTerm)
            }
            return false
        })
        view?.changeEmptyStateVisibility(to: !(filteredStationsByStationName?.isEmpty ?? false))
        view?.reloadTableView()
    }
    
    func onFilterButtonPressed() {
        router?.navigateToFilter(with: self)
    }
}

extension StationSelectionPresenter: StationFilterDelegate {
    func onFilterChanged(with filterSettings: FilterSettings) {
        // TODO: filtreleme yap, reloadTableView
        filteredStationsByStationName?.filter( { $0) })
    }
}
