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
}

extension BookingViewController: Booking.View {
 
}
