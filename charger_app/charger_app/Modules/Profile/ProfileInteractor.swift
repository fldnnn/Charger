//
//  ProfileInteractor.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//  
//

import Foundation

class ProfileInteractor {

    // MARK: - Properties
    var presenter: Profile.Presenter?
    weak var output: Profile.InteractorToPresenter?

}

extension ProfileInteractor: ProfileInteractorProtocol {
    // TODO: Implement use case methods
}
