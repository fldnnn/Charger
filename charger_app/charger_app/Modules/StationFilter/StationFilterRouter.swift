//
//  StationFilterRouter.swift
//  charger_app
//
//  Created by Fulden Onan on 12.07.2022.
//  
//

import UIKit

class StationFilterRouter {

    // MARK: - Properties
    var presenter: StationFilter.Presenter?
    weak var vC: UIViewController?

    // MARK: - Static methods
    static func createModule(with delegate: StationFilterDelegate) -> StationFilterViewController? {
        if let view = UIStoryboard(name: "StationFilter", bundle: nil).instantiateViewController(withIdentifier: "StationFilter") as? StationFilterViewController {
            let presenter = StationFilterPresenter()
            let interactor = StationFilterInteractor()
            let router = StationFilterRouter()

            view.presenter = presenter
            view.modalPresentationStyle = .fullScreen

            presenter.view = view
            presenter.interactor = interactor
            presenter.router = router
            presenter.delegate = delegate

            interactor.output = presenter

            router.presenter = presenter
            router.vC = view
        
            return view
        }
        return nil
    }
}

extension StationFilterRouter: StationFilterRouterProtocol {
    // TODO: Implement wireframe methods
}
