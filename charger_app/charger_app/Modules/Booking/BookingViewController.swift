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
    var presenter: Booking.Presenter!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientBackground()
        navigationController?.navigationBar.isHidden = true
    }

    @IBAction private func onProfileButtonPressed(_ sender: Any) {
        presenter?.onProfileButtonPressed()
    }
    
    @IBAction private func onCreateBookingButtonPressed() {
        presenter?.onCreateBookingButtonPressed()
    }
}

extension BookingViewController: Booking.View {
 
}
