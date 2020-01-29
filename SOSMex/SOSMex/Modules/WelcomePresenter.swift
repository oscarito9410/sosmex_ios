//
//  WelcomePresenter.swift
//  SOSMex
//
//  Created by Gabriel Zempoalteca Garrido on 5/19/19.
//  Copyright © 2019 SOS Mexico. All rights reserved.
//

import UIKit

class WelcomePresenter {
    
    // MARK: - VARIABLES
    weak var view: WelcomeViewInputProtocol?
    var interactor: WelcomeInteractorInputProtocol?
    var wireFrame: WelcomeWireFrameProtocol?
    
    // MARK: - INITIALIZERS
    init(view: WelcomeViewInputProtocol, interactor: WelcomeInteractorInputProtocol, wireFrame: WelcomeWireFrameProtocol) {
        self.view = view
        self.interactor = interactor
        self.wireFrame = wireFrame
    }
    
}
// MARK: - EXTENSIONS
extension WelcomePresenter: WelcomeViewOutputProtocol {
    
    func continueLogin() {
        interactor?.continueLogin()
    }
    
}

extension WelcomePresenter: WelcomeInteractorOutputProtocol {
    
    func goToHome() {
        wireFrame?.goToHome()
    }
    
    func goToInstructions() {
        wireFrame?.goToInstructions()
    }
    
}
