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
}

protocol StationSelectionPresenterProtocol: AnyObject {
    var view: StationSelection.View? { get set }
    var interactor: StationSelection.Interactor! { get set }
    var router: StationSelection.Router! { get set }
    
    func viewDidLoad()
    func getStationList() -> [Station]
    func onStationCellPressed(with station: Station)
}

protocol StationSelectionInteractorProtocol: AnyObject {
    var output: StationSelection.InteractorToPresenter? { get set }
    
    func fetchStationList()
}

protocol StationSelectionInteractorToPresenterProtocol: AnyObject {
    func stationsFetched(_ stationResponse: [Station])
}

protocol StationSelectionRouterProtocol: AnyObject {
    var presenter: StationSelection.Presenter? { get set }
}

struct StationSelection {
    typealias View = StationSelectionViewProtocol
    typealias Interactor = StationSelectionInteractorProtocol
    typealias InteractorToPresenter = StationSelectionInteractorToPresenterProtocol
    typealias Presenter = StationSelectionPresenterProtocol
    typealias Router = StationSelectionRouterProtocol
}
