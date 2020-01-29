//
//  WelcomeProtocols.swift
//  SOSMex
//
//  Created by Gabriel Zempoalteca Garrido on 5/19/19.
//  Copyright © 2019 SOS Mexico. All rights reserved.
//

import Foundation

// MARK: - VIEW
protocol WelcomeViewOutputProtocol: class {
    var view: WelcomeViewInputProtocol? { get set }
    var interactor: WelcomeInteractorInputProtocol? { get set }
    var wireFrame: WelcomeWireFrameProtocol? { get set }
    func continueLogin()
}

// MARK: - INTERACTOR
protocol WelcomeInteractorOutputProtocol: class {
    func goToHome()
    func goToInstructions()
}

// MARK: - PRESENTER
protocol WelcomeInteractorInputProtocol: class {
    var presenter: WelcomeInteractorOutputProtocol? { get set }
    func continueLogin()
}

protocol WelcomeViewInputProtocol: class {
    var presenter: WelcomeViewOutputProtocol? { get set }
}

// MARK: - WIREFRAME
protocol WelcomeWireFrameProtocol: class {
    func goToHome()
    func goToInstructions()
}
