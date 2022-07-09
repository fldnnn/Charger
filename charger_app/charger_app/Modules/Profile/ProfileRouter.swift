//
//  ProfileRouter.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//  
//

import UIKit

class ProfileRouter {

    // MARK: - Properties
    var presenter: Profile.Presenter?
    weak var vC: UIViewController?

    // MARK: - Static methods
    static func createModule() -> ProfileViewController? {
        if let view = UIStoryboard(name: "Profile", bundle: nil).instantiateViewController(withIdentifier: "Profile") as? ProfileViewController {
            let presenter = ProfilePresenter()
            let interactor = ProfileInteractor()
            let router = ProfileRouter()

            view.presenter = presenter
            view.modalPresentationStyle = .fullScreen

            presenter.view = view
            presenter.interactor = interactor
            presenter.router = router

            interactor.output = presenter

            router.presenter = presenter
            router.vC = view
        
            return view
        }
        return nil
    }
}

extension ProfileRouter: ProfileRouterProtocol {
    // TODO: Implement wireframe methods
}
