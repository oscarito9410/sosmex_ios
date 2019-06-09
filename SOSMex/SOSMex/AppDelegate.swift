//
//  AppDelegate.swift
//  SOSMex
//
//  Created by Gabriel Zempoalteca Garrido on 5/19/19.
//  Copyright © 2019 SOS Mexico. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        showWelcome()
        
        if let statusBar = UIApplication.shared.value(forKey: "statusBar") as? UIView {
            statusBar.backgroundColor = .clear
        }
        FirebaseApp.configure()
        return true
    }
    
    func showWelcome() {
        window = UIWindow(frame: UIScreen.main.bounds)
        let navController = UINavigationController(rootViewController: WelcomeWireFrame.createModule())
        navController.isNavigationBarHidden = true
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }

}
