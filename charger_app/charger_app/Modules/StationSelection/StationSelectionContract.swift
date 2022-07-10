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
}

protocol StationSelectionPresenterProtocol: AnyObject {
    var view: StationSelection.View? { get set }
    var interactor: StationSelection.Interactor! { get set }
    var router: StationSelection.Router! { get set }
    
}

protocol StationSelectionInteractorProtocol: AnyObject {
    var output: StationSelection.InteractorToPresenter? { get set }
}

protocol StationSelectionInteractorToPresenterProtocol: AnyObject {
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
