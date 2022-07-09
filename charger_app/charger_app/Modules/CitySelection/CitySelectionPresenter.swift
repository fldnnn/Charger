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
}

extension CitySelectionPresenter: CitySelectionPresenterProtocol {
    // TODO: implement presentation methods
}

extension CitySelectionPresenter: CitySelectionInteractorToPresenterProtocol {
    // TODO: implement interactor output methods
}
