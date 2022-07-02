//
//  ViewController.swift
//  charger_app
//
//  Created by Fulden Onan on 2.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.emailTextField.addBottomLayer()
        self.view.backgroundColor = UIColor.dark
//        self.navigationItem.titleView?.backgroundColor = UIColor.red
//        self.navigationController?.navigationBar.barTintColor = UIColor.red
        setGradientBackground()

    }
    @IBAction func loginButtonPressed(_ sender: Any) {
    }
    func setGradientBackground() {
        let colorTop =  UIColor.charcoalGrey.cgColor
        let colorBottom = UIColor.dark.cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds

        self.view.layer.insertSublayer(gradientLayer, at:0)
//        layer.insertSublayer(gradientLayer, at: 0)
        //return layer
    }
//    override func viewWillAppear(_ animated: Bool) {
//        setGradientBackground()
//            super.viewWillAppear(animated)
//    }

}

