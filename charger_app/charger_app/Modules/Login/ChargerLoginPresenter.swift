//
//  ChargerLoginPresenter.swift
//  charger_app
//
//  Created by Fulden Onan on 4.07.2022.
//

import Foundation
 
class LoginPresenter: Login.Presenter {
    
    weak var view: Login.View?
    
    var interactor: Login.Interactor!
    
    var router: Login.Router!
     
    
    func didDataFetch() {
        
    }
    
    func didUserPressLoginButton() {
//        interactor.postRequest()
// if postRequest() doesnt't work, it shouldn't navigate. Add function.
//        router.startPage()
    }
    func getUserInfo(with UserDict: [String : Any]) {
        interactor?.postRequest(UserDict: UserDict)
        print(UserDict)
    }
}

extension LoginPresenter: Login.InteractorToPresenter {
    func userLoggedIn(with userId: Int) {
        router?.navigateToBooking(with: userId)
    }
}
