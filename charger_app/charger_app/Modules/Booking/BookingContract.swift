//
//  BookingContract.swift
//  charger_app
//
//  Created by Fulden Onan on 5.07.2022.
//  
//

import Foundation

protocol BookingViewProtocol: AnyObject {
    
}

protocol BookingPresenterProtocol: AnyObject {
    func onProfileButtonPressed()
}

protocol BookingInteractorProtocol: AnyObject {
   
}

protocol BookingInteractorToPresenter: AnyObject {
    
}

protocol BookingRouterProtocol: AnyObject {
    func navigateToProfile()
}

struct Booking {
    typealias View = BookingViewProtocol
    typealias Interactor = BookingInteractorProtocol
    typealias InteractorToPresenter = BookingInteractorToPresenter
    typealias Presenter = BookingPresenterProtocol
//    typealias Entity = LoginEntityProtocol
    typealias Router = BookingRouterProtocol
}
