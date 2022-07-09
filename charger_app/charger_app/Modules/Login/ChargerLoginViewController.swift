//
//  ViewController.swift
//  charger_app
//
//  Created by Fulden Onan on 2.07.2022.
//

import UIKit

class LoginViewController: UIViewController, LoginViewProtocol {

    @IBOutlet private weak var emailTextField: UITextField!
     
    var presenter: Login.Presenter!
     
    var postDict = [String: Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.emailTextField.addBottomLayer()
        //self.view.backgroundColor = UIColor.dark

        view.setGradientBackground()
        emailTextField.addBottomLayer()
         
        navigationController?.navigationBar.backgroundColor = UIColor.charcoalGrey
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { didAllow, error in
            if error == nil {
            }
        })
    }
     
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        presenter.viewDidAppear()
    }

    @IBAction private func loginButtonPressed() {
        let email = emailTextField.text

        if email?.isValidEmail() == false {
            emailTextField.layer.borderColor = UIColor.state.cgColor
            emailTextField.layer.borderWidth = 2
             
            // if there is a problem with logging in, show an error message with OK button.
            let alert = UIAlertController(title: "Login Failure", message: "Please enter a valid e-mail!", preferredStyle: .alert)
            let dismiss = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(dismiss)
            self.present(alert, animated: true,completion: nil)
        } else {
            emailTextField.layer.borderColor = UIColor.clear.cgColor
            emailTextField.layer.borderWidth = 0
              
            postDict["email"] = email
            
            //deviceUDID
            let uuid = UIDevice.current.identifierForVendor?.uuidString
             
            postDict["deviceUDID"] = uuid

            presenter?.getUserInfo(with: postDict)
            print(postDict)
        
            presenter?.didUserPressLoginButton()
        }
    }
}


