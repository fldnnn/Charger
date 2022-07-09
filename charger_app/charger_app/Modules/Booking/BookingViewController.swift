//
//  BookingViewController.swift
//  charger_app
//
//  Created by Fulden Onan on 5.07.2022.
//  
//

import UIKit

class BookingViewController: UIViewController {

    // MARK: - Properties
    var presenter: BookingPresenter?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func onProfileButtonPressed(_ sender: Any) {
        presenter?.onProfileButtonPressed()
    }
}

extension BookingViewController: Booking.View {
 
}
