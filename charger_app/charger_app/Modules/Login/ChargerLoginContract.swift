//
//  ChargerLoginContract.swift
//  charger_app
//
//  Created by Fulden Onan on 3.07.2022.
//

import Foundation
 
protocol LoginViewProtocol: AnyObject {
     
    var presenter: Login.Presenter! { get set }
     
}
 
protocol LoginInteractorProtocol: AnyObject {
     
//    var presenter: Login.Presenter? { get set }
    var output: Login.InteractorToPresenter? { get set }
    
    func postRequest(UserDict: [String: Any])
}
 
protocol LoginPresenterProtocol: AnyObject {
    
    var view: Login.View? { get set }
    var interactor: Login.Interactor! { get set }
    var router: Login.Router! { get set }
     
    func didDataFetch()
    func didUserPressLoginButton()
    func getUserInfo(with UserDict: [String: Any])
}

protocol LoginInteractorToPresenterProtocol: AnyObject {
    func userLoggedIn(with userId: Int)
}
 
protocol LoginEntityProtocol: AnyObject {
    
}

protocol LoginRouterProtocol: AnyObject {
     
    var presenter: Login.Presenter? { get set }
//    func startPage()
      
  
//    func navigateToReservationPage(with name: String)
    func navigateToBooking(with userId: Int)
}
 
struct Login {
    typealias View = LoginViewProtocol
    typealias Interactor = LoginInteractorProtocol
    typealias InteractorToPresenter = LoginInteractorToPresenterProtocol
    typealias Presenter = LoginPresenterProtocol
    typealias Entity = LoginEntityProtocol
    typealias Router = LoginRouterProtocol
}
