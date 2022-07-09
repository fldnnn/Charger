//
//  ProfileContract.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//  
//

import Foundation

protocol ProfileViewProtocol: AnyObject {
    var presenter: Profile.Presenter! { get set }
}

protocol ProfilePresenterProtocol: AnyObject {
    var view: Profile.View? { get set }
    var interactor: Profile.Interactor! { get set }
    var router: Profile.Router! { get set }
}

protocol ProfileInteractorProtocol: AnyObject {
    var output: Profile.InteractorToPresenter? { get set }
}

protocol ProfileInteractorToPresenterProtocol: AnyObject {
}

protocol ProfileRouterProtocol: AnyObject {
    var presenter: Profile.Presenter? { get set }
}

struct Profile {
    typealias View = ProfileViewProtocol
    typealias Interactor = ProfileInteractorProtocol
    typealias InteractorToPresenter = ProfileInteractorToPresenterProtocol
    typealias Presenter = ProfilePresenterProtocol
    typealias Router = ProfileRouterProtocol
}
