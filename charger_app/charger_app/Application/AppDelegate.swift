//
//  AppDelegate.swift
//  charger_app
//
//  Created by Fulden Onan on 2.07.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let viewController = LoginRouter.createModule()
        let navigationController = UINavigationController(rootViewController: viewController ?? UIViewController())
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
}
