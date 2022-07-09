//
//  ChargerLoginRouter.swift
//  charger_app
//
//  Created by Fulden Onan on 4.07.2022.
//

import UIKit
 
class LoginRouter {
    
    var presenter: Login.Presenter?
    weak var vc: UIViewController?
    
    static func setUpModule() -> LoginViewController? {
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
            router.vc = view
        
            return view
        }
        return nil
    }
}

extension LoginRouter: LoginRouterProtocol {
    func navigateToBooking(with userId: Int) {
        let bookingVC = BookingRouter.createModule(userId: userId) ?? UIViewController()
        vc?.navigationController?.pushViewController(bookingVC, animated: true)
    }
}
