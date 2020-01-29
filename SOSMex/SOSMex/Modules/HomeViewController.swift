//
//  HomeViewController.swift
//  SOSMex
//
//  Created by Gabriel Zempoalteca Garrido on 5/19/19.
//  Copyright © 2019 SOS Mexico. All rights reserved.
//

import UIKit
import FirebaseUI

class HomeViewController: UIViewController {

	// MARK: - ARCHITECTURE PROPERTIES
    var presenter: HomeViewOutputProtocol?
    
    // MARK: - OUTLETS
    
    // MARK: - VARIABLES
    let authUI = FUIAuth.defaultAuthUI()
    
    // MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        initComponents()
    }
    
    // MARK: - FUNCTIONS
    private func initComponents() {
        
        // You need to adopt a FUIAuthDelegate protocol to receive callback
        authUI?.delegate = self
    }
    
    // MARK: - ACTIONS
    @IBAction func buttonPressed(_ sender: UIButton) {
        do {
            try authUI?.signOut()
        } catch let err {
            print("Error: \(err)")
        }
    }
    
}
// MARK: - EXTENSIONS
extension HomeViewController: HomeViewInputProtocol {
    
}

extension HomeViewController: FUIAuthDelegate {
    
}
