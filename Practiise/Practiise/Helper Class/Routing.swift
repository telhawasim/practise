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
        let storyboard = UIStoryboard.main
        
        if let controller = storyboard.instantiateViewController(withIdentifier: SignUpViewController.className) as? SignUpViewController {
            let navigationController = UINavigationController(rootViewController: controller) //here...
            navigationController.storyboard?.instantiateInitialViewController()
            window?.rootViewController = navigationController
        }
    }
}
