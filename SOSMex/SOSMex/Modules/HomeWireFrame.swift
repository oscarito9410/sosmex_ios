//
//  HomeWireFrame.swift
//  SOSMex
//
//  Created by Gabriel Zempoalteca Garrido on 5/19/19.
//  Copyright © 2019 SOS Mexico. All rights reserved.
//

import UIKit

class HomeWireFrame: HomeWireFrameProtocol {
    
    // MARK: - VARIABLES
    weak var viewController: UIViewController?
    
    // MARK: - FUNCTIONS
    static func createModule() -> UIViewController {
        let view = HomeViewController()
        let interactor = HomeInteractor()
        let wireFrame = HomeWireFrame()
        let presenter = HomePresenter(view: view, interactor: interactor, wireFrame: wireFrame)
        view.presenter = presenter
        interactor.presenter = presenter
        wireFrame.viewController = view
        return view
    }
    
}
