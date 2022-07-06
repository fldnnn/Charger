//
//  BookingPresenter.swift
//  charger_app
//
//  Created by Fulden Onan on 5.07.2022.
//  
//

import Foundation

class BookingPresenter {

    // MARK: - Properties
    weak var view: BookingViewController?
    var router: BookingRouter?
    var interactor: BookingInteractor?
    var userId: Int?
}

extension BookingPresenter: BookingPresenterProtocol {
    
}

extension BookingPresenter: BookingInteractorToPresenter {

}
