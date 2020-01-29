//
//  WelcomeViewController.swift
//  SOSMex
//
//  Created by Gabriel Zempoalteca Garrido on 5/19/19.
//  Copyright © 2019 SOS Mexico. All rights reserved.
//

import UIKit
import FirebaseUI

class WelcomeViewController: UIViewController {

	// MARK: - ARCHITECTURE PROPERTIES
    var presenter: WelcomeViewOutputProtocol?
    
    // MARK: - OUTLETS
    
    // MARK: - VARIABLES
    
    // MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        initComponents()
    }
    
    // MARK: - FUNCTIONS
    private func initComponents() {
        
    }
    
    // MARK: - ACTIONS
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("Login tapped")
        print("Get the default auth UI object")
        
        let authUI = FUIAuth.defaultAuthUI()
        
        guard let auth = authUI else { return }
        
        print("Set ourselves as delegates")
        
        auth.delegate = self
        auth.providers = [FUIGoogleAuth()]
        
        print("Get a reference to the Auth UI View controller")
        
        let authViewController = auth.authViewController()
        
        print("Show it")
        present(authViewController, animated: true, completion: nil)
    }
    
}
// MARK: - EXTENSIONS
extension WelcomeViewController: WelcomeViewInputProtocol {
    
}

extension WelcomeViewController: FUIAuthDelegate {
    
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, url: URL?, error: Error?) {
        // Check if there was an error
        guard error == nil else {
            print("Error: \(error?.localizedDescription)")
            return
        }
        presenter?.continueLogin()
    }
    
    func authPickerViewController(forAuthUI authUI: FUIAuth) -> FUIAuthPickerViewController {
        return LoginViewController(
            nibName: "LoginView",
            bundle: Bundle.main,
            authUI: authUI)
    }
    
}
