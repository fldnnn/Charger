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
    private var filteredStations: [Station]?
}

extension StationSelectionPresenter: StationSelectionPresenterProtocol {
    func viewDidLoad() {
        interactor?.fetchStationList(with: cityName ?? "")
    }
    
    func getFilteredStationList() -> [Station] {
        filteredStations ?? []
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
        filteredStations = stationDetailsResponse
        view?.updateUI(with: cityName ?? "", filteredStations?.count ?? 0)
        view?.reloadTableView()
    }
}
