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
     
    var presenter: Login.Presenter? { get set }
    
    func postData()
}
 
protocol LoginPresenterProtocol: AnyObject {
    
    var view: Login.View? { get set }
    var interactor: Login.Interactor! { get set }
    var router: Login.Router! { get set }
     
    func didDataFetch()
    func didUserPressLoginButton()
}
 
protocol LoginEntityProtocol: AnyObject {
    
}

protocol LoginPRouterProtocol: AnyObject {
     
    var presenter: Login.Presenter? { get set }
     
    func navigateToAppointmentPage(with name: String)
}
 
struct Login {
    typealias View = LoginViewProtocol
    typealias Interactor = LoginInteractorProtocol
    typealias Presenter = LoginPresenterProtocol
    typealias Entity = LoginEntityProtocol
    typealias Router = LoginPRouterProtocol
}
