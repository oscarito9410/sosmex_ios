//
//  HomePresenter.swift
//  SOSMex
//
//  Created by Gabriel Zempoalteca Garrido on 5/19/19.
//  Copyright © 2019 SOS Mexico. All rights reserved.
//

import UIKit

class HomePresenter {
    
    // MARK: - VARIABLES
    weak var view: HomeViewInputProtocol?
    var interactor: HomeInteractorInputProtocol?
    var wireFrame: HomeWireFrameProtocol?
    
    // MARK: - INITIALIZERS
    init(view: HomeViewInputProtocol, interactor: HomeInteractorInputProtocol, wireFrame: HomeWireFrameProtocol) {
        self.view = view
        self.interactor = interactor
        self.wireFrame = wireFrame
    }
    
}
// MARK: - EXTENSIONS
extension HomePresenter: HomeViewOutputProtocol {
    
}

extension HomePresenter: HomeInteractorOutputProtocol {
    
}
