//
//  Routing.swift
//  Practiise
//
//  Created by Telha Wasim on 22/10/2023.
//

import Foundation
import UIKit

class Routing {
    
    static let shared = Routing()
    
    private init() {}
    
    //MARK: - SET ROOT VIEW CONTROLLER -
    func setRootViewController(window: UIWindow?, navigationController: UINavigationController?) {
        let storyboard: UIStoryboard = UIStoryboard.main
        let rootViewController = storyboard.instantiateViewController(withIdentifier: SignUpViewController.className)

        if let navigationController = storyboard.instantiateInitialViewController() as? UINavigationController {
            navigationController.viewControllers = [rootViewController]
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
        }
    }
}
