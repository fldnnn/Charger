//
//  LoginHelper.swift
//  charger_app
//
//  Created by Fulden Onan on 4.07.2022.
//

import Foundation
import UIKit
 
extension Login {
     
    static func createModule() -> UIViewController? {
         
        if let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginView") as? LoginViewController {
            
            let presenter = LoginPresenter()
            let interactor = LoginInteractor()
            let router = LoginRouter()
            view.presenter = presenter
            presenter.view = view
            //presenter.router = router
            presenter.interactor = interactor
            interactor.output = presenter
            router.presenter = presenter
             
            return view
            
        }
        return nil
    }
}
