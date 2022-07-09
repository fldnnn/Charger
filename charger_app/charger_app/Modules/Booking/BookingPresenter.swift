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
    weak var view: Booking.View?
    var router: Booking.Router!
    var interactor: Booking.Interactor!
    var userId: Int?
}

extension BookingPresenter: BookingPresenterProtocol {
    func onProfileButtonPressed() {
        router?.navigateToProfile()
    }
     
    func onCreateBookingButtonPressed() {
        router?.navigateToCitySelection()
    }
}

extension BookingPresenter: BookingInteractorToPresenter {

}
