//
//  CitySelectionViewController.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//  
//

import UIKit

class CitySelectionViewController: UIViewController {

    @IBOutlet private weak var cityTableView: UITableView!
    @IBOutlet private weak var citySearchBar: UISearchBar!
    
    // MARK: - Properties
    var presenter: CitySelection.Presenter!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Şehir Seçiniz"
        navigationController?.navigationBar.isHidden = false
        view.setGradientBackground()
    }
}

extension CitySelectionViewController: CitySelectionViewProtocol {
    // TODO: implement view output methods
}
