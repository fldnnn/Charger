//
//  StationSelectionContract.swift
//  charger_app
//
//  Created by Fulden Onan on 10.07.2022.
//  
//

import Foundation

protocol StationSelectionViewProtocol: AnyObject {
    var presenter: StationSelection.Presenter! { get set }
    
    func reloadTableView()
    func updateUI(with cityName: String, _ stationCount: Int)
    func changeEmptyStateVisibility(to isVisible: Bool)
}

protocol StationSelectionPresenterProtocol: AnyObject {
    var view: StationSelection.View? { get set }
    var interactor: StationSelection.Interactor! { get set }
    var router: StationSelection.Router! { get set }
    
    func viewDidLoad()
    func getFilteredStationList() -> [Station]
    func onStationCellPressed(with station: Station)
    func filterStations(with searchTerm: String)
    func onFilterButtonPressed()
}

protocol StationSelectionInteractorProtocol: AnyObject {
    var output: StationSelection.InteractorToPresenter? { get set }
    
    func fetchStationList(with cityName: String)
}

protocol StationSelectionInteractorToPresenterProtocol: AnyObject {
    func stationsFetched(_ stationResponse: [Station])
    func stationDetailsFetched(_ stationDetailResponse: [Station])
}

protocol StationSelectionRouterProtocol: AnyObject {
    var presenter: StationSelection.Presenter? { get set }
    
    func navigateToFilter(with delegate: StationFilterDelegate) 
}

struct StationSelection {
    typealias View = StationSelectionViewProtocol
    typealias Interactor = StationSelectionInteractorProtocol
    typealias InteractorToPresenter = StationSelectionInteractorToPresenterProtocol
    typealias Presenter = StationSelectionPresenterProtocol
    typealias Router = StationSelectionRouterProtocol
}
