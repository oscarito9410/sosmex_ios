//
//  WelcomeWireFrame.swift
//  SOSMex
//
//  Created by Gabriel Zempoalteca Garrido on 5/19/19.
//  Copyright © 2019 SOS Mexico. All rights reserved.
//

import UIKit

class WelcomeWireFrame: WelcomeWireFrameProtocol {
    
    // MARK: - VARIABLES
    weak var viewController: UIViewController?
    
    // MARK: - FUNCTIONS
    static func createModule() -> UIViewController {
        let view = WelcomeViewController()
        let interactor = WelcomeInteractor()
        let wireFrame = WelcomeWireFrame()
        let presenter = WelcomePresenter(view: view, interactor: interactor, wireFrame: wireFrame)
        view.presenter = presenter
        interactor.presenter = presenter
        wireFrame.viewController = view
        return view
    }
    
    func goToHome() {
        if let controller = viewController, let navcontroller = controller.navigationController {
            navcontroller.pushViewController(HomeWireFrame.createModule(), animated: true)
        }
    }
    
    func goToInstructions() {
        if let controller = viewController, let navcontroller = controller.navigationController {
            // TODO: Make a flow for Instructions
        }
    }
    
}
