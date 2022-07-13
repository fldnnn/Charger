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
    static func createModule(with cityName: String) -> StationSelectionViewController? {
        if let view = UIStoryboard(name: "StationSelection", bundle: nil).instantiateViewController(withIdentifier: "StationSelection") as? StationSelectionViewController {
            let presenter = StationSelectionPresenter()
            let interactor = StationSelectionInteractor()
            let router = StationSelectionRouter()
            let adapter = StationSelectionTableViewAdapter(presenter: presenter)

            view.presenter = presenter
            view.adapter = adapter
            view.modalPresentationStyle = .fullScreen

            presenter.view = view
            presenter.interactor = interactor
            presenter.router = router
            presenter.cityName = cityName

            interactor.output = presenter

            router.presenter = presenter
            router.vC = view
        
            return view
        }
        return nil
    }
}

extension StationSelectionRouter: StationSelectionRouterProtocol {
    func navigateToFilter(with delegate: StationFilterDelegate) {
        let stationFilterVC = StationFilterRouter.createModule(with: delegate) ?? UIViewController()
        vC?.navigationController?.pushViewController(stationFilterVC, animated: true)
    }
}
