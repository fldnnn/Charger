//
//  CitySelectionPresenter.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//  
//

import Foundation

class CitySelectionPresenter {

    // MARK: - Properties
    weak var view: CitySelection.View?
    var router: CitySelection.Router!
    var interactor: CitySelection.Interactor!
    private var cityList: [String]?
}

extension CitySelectionPresenter: CitySelectionPresenterProtocol {
    func viewDidLoad() {
        interactor?.fetchCityList()
    }
    
    func getCityList() -> [String] {
        cityList ?? []
    }
}

extension CitySelectionPresenter: CitySelectionInteractorToPresenterProtocol {
    func citiesFetched(_ cityList: [String]) {
        self.cityList = cityList
        view?.reloadTableView()
    }
}
