//
//  ChargerLoginRouter.swift
//  charger_app
//
//  Created by Fulden Onan on 4.07.2022.
//

import UIKit
 
class LoginRouter {
    
    var presenter: Login.Presenter?
    weak var vC: UIViewController?
    
    static func createModule() -> LoginViewController? {
        if let view = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "Login") as? LoginViewController {
            let presenter = LoginPresenter()
            let interactor = LoginInteractor()
            let router = LoginRouter()
            view.presenter = presenter
            view.modalPresentationStyle = .fullScreen
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = router
//            interactor.presenter = presenter
            interactor.output = presenter
            router.presenter = presenter
            router.vC = view
        
            return view
        }
        return nil
    }
}

extension LoginRouter: LoginRouterProtocol {
    func navigateToBooking(with userId: Int) {
        let bookingVC = BookingRouter.createModule(userId: userId) ?? UIViewController()
        vC?.navigationController?.pushViewController(bookingVC, animated: true)
    }
}
