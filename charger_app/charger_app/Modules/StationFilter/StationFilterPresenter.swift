//
//  StationFilterPresenter.swift
//  charger_app
//
//  Created by Fulden Onan on 12.07.2022.
//  
//

import Foundation

class StationFilterPresenter {

    // MARK: - Properties
    weak var view: StationFilter.View?
    var router: StationFilter.Router!
    var interactor: StationFilter.Interactor!
}

extension StationFilterPresenter: StationFilterPresenterProtocol {
    // TODO: implement presentation methods
}

extension StationFilterPresenter: StationFilterInteractorToPresenterProtocol {
    // TODO: implement interactor output methods
}
