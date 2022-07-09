//
//  ProfilePresenter.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//  
//

import Foundation

class ProfilePresenter {

    // MARK: - Properties
    weak var view: Profile.View?
    var router: Profile.Router!
    var interactor: Profile.Interactor!
}

extension ProfilePresenter: ProfilePresenterProtocol {
    // TODO: implement presentation methods
}

extension ProfilePresenter: ProfileInteractorToPresenterProtocol {
    // TODO: implement interactor output methods
}
