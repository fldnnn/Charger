//
//  CitySelectionRouter.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//  
//

import UIKit

class CitySelectionRouter {

    // MARK: - Properties
    var presenter: CitySelection.Presenter?
    weak var vC: UIViewController?

    // MARK: - Static methods
    static func createModule() -> CitySelectionViewController? {
        if let view = UIStoryboard(name: "CitySelection", bundle: nil).instantiateViewController(withIdentifier: "CitySelection") as? CitySelectionViewController {
            let presenter = CitySelectionPresenter()
            let interactor = CitySelectionInteractor()
            let router = CitySelectionRouter()
            let adapter = CitySelectionTableViewAdapter(presenter: presenter)

            view.presenter = presenter
            view.modalPresentationStyle = .fullScreen
            view.adapter = adapter

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

extension CitySelectionRouter: CitySelectionRouterProtocol {
    // TODO: Implement wireframe methods
}
