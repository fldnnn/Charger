//
//  StationSelectionRouter.swift
//  charger_app
//
//  Created by Fulden Onan on 10.07.2022.
//  
//

import UIKit

class StationSelectionRouter {

    // MARK: - Properties
    var presenter: StationSelection.Presenter?
    weak var vC: UIViewController?

    // MARK: - Static methods
    static func createModule() -> StationSelectionViewController? {
        if let view = UIStoryboard(name: "StationSelection", bundle: nil).instantiateViewController(withIdentifier: "StationSelection") as? StationSelectionViewController {
            let presenter = StationSelectionPresenter()
            let interactor = StationSelectionInteractor()
            let router = StationSelectionRouter()

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

extension StationSelectionRouter: StationSelectionRouterProtocol {
    // TODO: Implement wireframe methods
}
