//
//  BookingContract.swift
//  charger_app
//
//  Created by Fulden Onan on 5.07.2022.
//  
//

import Foundation

protocol BookingViewProtocol: AnyObject {
    var presenter: Booking.Presenter! { get set }
}

protocol BookingPresenterProtocol: AnyObject {
    var view: Booking.View? { get set }
    var interactor: Booking.Interactor! { get set }
    var router: Booking.Router! { get set }

    func onProfileButtonPressed()
    func onCreateBookingButtonPressed()
}

protocol BookingInteractorProtocol: AnyObject {
    var output: Booking.InteractorToPresenter? { get set }
}

protocol BookingInteractorToPresenter: AnyObject {
    
}

protocol BookingRouterProtocol: AnyObject {
    var presenter: Booking.Presenter? { get set }

    func navigateToProfile()
    func navigateToCitySelection()
}

struct Booking {
    typealias View = BookingViewProtocol
    typealias Interactor = BookingInteractorProtocol
    typealias InteractorToPresenter = BookingInteractorToPresenter
    typealias Presenter = BookingPresenterProtocol
    typealias Router = BookingRouterProtocol
}
