//
//  CitySelectionContract.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//  
//

import Foundation

protocol CitySelectionViewProtocol: AnyObject {
    var presenter: CitySelection.Presenter! { get set }
    
    func reloadTableView()
}

protocol CitySelectionPresenterProtocol: AnyObject {
    var view: CitySelection.View? { get set }
    var interactor: CitySelection.Interactor! { get set }
    var router: CitySelection.Router! { get set }
    
    func viewDidLoad()
    func getCityList() -> [String]
}

protocol CitySelectionInteractorProtocol: AnyObject {
    var output: CitySelection.InteractorToPresenter? { get set }
    
    func fetchCityList()
}

protocol CitySelectionInteractorToPresenterProtocol: AnyObject {
    func citiesFetched(_ cityList: [String])
}

protocol CitySelectionRouterProtocol: AnyObject {
    var presenter: CitySelection.Presenter? { get set }
}

struct CitySelection {
    typealias View = CitySelectionViewProtocol
    typealias Interactor = CitySelectionInteractorProtocol
    typealias InteractorToPresenter = CitySelectionInteractorToPresenterProtocol
    typealias Presenter = CitySelectionPresenterProtocol
    typealias Router = CitySelectionRouterProtocol
}
