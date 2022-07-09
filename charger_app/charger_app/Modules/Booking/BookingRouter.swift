//
//  BookingRouter.swift
//  charger_app
//
//  Created by Fulden Onan on 5.07.2022.
//  
//

import UIKit

class BookingRouter {

    // MARK: - Properties
    var presenter: Booking.Presenter?
    weak var vC: UIViewController?

    // MARK: - Static methods
    static func createModule(userId: Int) -> BookingViewController? {
        if let view = UIStoryboard(name: "Booking", bundle: nil).instantiateViewController(withIdentifier: "Booking") as? BookingViewController {
            let presenter = BookingPresenter()
            let interactor = BookingInteractor()
            let router = BookingRouter()
            
            view.presenter = presenter
            view.modalPresentationStyle = .fullScreen
            
            presenter.view = view
            presenter.userId = userId
            presenter.router = router
            presenter.interactor = interactor
            
            interactor.output = presenter
            
            router.presenter = presenter
            router.vC = view
            return view
        }
        return nil
    }
}

extension BookingRouter: Booking.Router {
     
    func navigateToProfile() {
        let profileVC = ProfileRouter.createModule() ?? UIViewController()
        vC?.navigationController?.pushViewController(profileVC, animated: true)
    }
     
    func navigateToCitySelection() {
        let citySelectionVC = CitySelectionRouter.createModule() ?? UIViewController()
        vC?.navigationController?.pushViewController(citySelectionVC, animated: true)
    }
}
