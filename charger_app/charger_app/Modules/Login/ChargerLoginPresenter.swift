//
//  ChargerLoginPresenter.swift
//  charger_app
//
//  Created by Fulden Onan on 4.07.2022.
//

import Foundation
import CoreLocation
 
class LoginPresenter: Login.Presenter {
    
    weak var view: Login.View?
    var interactor: Login.Interactor!
    var router: Login.Router!
    
    func didDataFetch() {
        
    }
    
    func didUserPressLoginButton() {
        
    }
    
    func getUserInfo(with UserDict: [String : Any]) {
        interactor?.postRequest(UserDict: UserDict)
    }
    
    func viewDidAppear() {
        interactor.verifyLocationPermission()
    }
}

extension LoginPresenter: Login.InteractorToPresenter {
    func userLoggedIn(with userId: Int) {
        router?.navigateToBooking(with: userId)
    }
}
