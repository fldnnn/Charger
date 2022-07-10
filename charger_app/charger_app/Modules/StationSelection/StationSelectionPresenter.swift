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
}

extension StationSelectionPresenter: StationSelectionPresenterProtocol {
    // TODO: implement presentation methods
}

extension StationSelectionPresenter: StationSelectionInteractorToPresenterProtocol {
    // TODO: implement interactor output methods
}
