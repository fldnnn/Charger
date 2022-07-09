//
//  CitySelectionInteractor.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//  
//

import Foundation

class CitySelectionInteractor {

    // MARK: - Properties
    var presenter: CitySelection.Presenter?
    weak var output: CitySelection.InteractorToPresenter?

}

extension CitySelectionInteractor: CitySelectionInteractorProtocol {
    // TODO: Implement use case methods
}
