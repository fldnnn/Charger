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
    private var filteredCities: [String]?
}

extension CitySelectionPresenter: CitySelectionPresenterProtocol {
    func viewDidLoad() {
        interactor?.fetchCityList()
    }
    
    func getCityList() -> [String] {
        filteredCities ?? []
    }
    
    func filterCities(with searchTerm: String) {
        filteredCities = cityList?.filter({ $0.contains(searchTerm) })
        view?.reloadTableView()
    }
}

extension CitySelectionPresenter: CitySelectionInteractorToPresenterProtocol {
    func citiesFetched(_ cityList: [String]) {
        self.cityList = cityList
        filteredCities = cityList
        view?.reloadTableView()
    }
}
