//
//  AppDelegate.swift
//  Practiise
//
//  Created by Telha Wasim on 22/10/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigationController: UINavigationController = UINavigationController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Routing.shared.setRootViewController(window: self.window, navigationController: self.navigationController)
        
        return true
    }

}

