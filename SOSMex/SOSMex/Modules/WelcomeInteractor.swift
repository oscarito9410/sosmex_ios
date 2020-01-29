//
//  WelcomeInteractor.swift
//  SOSMex
//
//  Created by Gabriel Zempoalteca Garrido on 5/19/19.
//  Copyright © 2019 SOS Mexico. All rights reserved.
//

import UIKit

class WelcomeInteractor: WelcomeInteractorInputProtocol {
    
    // MARK: - VARIABLES
    weak var presenter: WelcomeInteractorOutputProtocol?
    
    // MARK: - INITIALIZER
    init() {
        
    }
    
    // MARK: - FUNCTIONS
    func continueLogin() {
        if isFirstTime() {
            presenter?.goToInstructions()
        } else {
            presenter?.goToHome()
        }
    }
    
    private func isFirstTime() -> Bool {
        return false
    }
    
}
