//
//  ProfileViewController.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//  
//

import UIKit

class ProfileViewController: UIViewController {

    // MARK: - Properties
    var presenter: Profile.Presenter!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ProfileViewController: ProfileViewProtocol {
    // TODO: implement view output methods
}
