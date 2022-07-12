//
//  StationFilterContract.swift
//  charger_app
//
//  Created by Fulden Onan on 12.07.2022.
//  
//

import Foundation

protocol StationFilterViewProtocol: AnyObject {
    var presenter: StationFilter.Presenter! { get set }
}

protocol StationFilterPresenterProtocol: AnyObject {
    var view: StationFilter.View? { get set }
    var interactor: StationFilter.Interactor! { get set }
    var router: StationFilter.Router! { get set }
    
}

protocol StationFilterInteractorProtocol: AnyObject {
    var output: StationFilter.InteractorToPresenter? { get set }
}

protocol StationFilterInteractorToPresenterProtocol: AnyObject {
}

protocol StationFilterRouterProtocol: AnyObject {
    var presenter: StationFilter.Presenter? { get set }
}

struct StationFilter {
    typealias View = StationFilterViewProtocol
    typealias Interactor = StationFilterInteractorProtocol
    typealias InteractorToPresenter = StationFilterInteractorToPresenterProtocol
    typealias Presenter = StationFilterPresenterProtocol
    typealias Router = StationFilterRouterProtocol
}
