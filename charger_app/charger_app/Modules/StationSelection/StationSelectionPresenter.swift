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
    private var stationList: [Station]?
}

extension StationSelectionPresenter: StationSelectionPresenterProtocol {
    func viewDidLoad() {
        interactor?.fetchStationList()
    }
    
    func getStationList() -> [Station] {
        stationList ?? []
    }
    
    func onStationCellPressed(with: Station) {
        // TODO: navigate to booking date selection
    }
}

extension StationSelectionPresenter: StationSelectionInteractorToPresenterProtocol {
    func stationsFetched(_ stationResponse: [Station]) {
        stationList = stationResponse
        view?.reloadTableView()
    }
}
