//
//  HomeProtocols.swift
//  SOSMex
//
//  Created by Gabriel Zempoalteca Garrido on 5/19/19.
//  Copyright © 2019 SOS Mexico. All rights reserved.
//

import Foundation

// MARK: - VIEW
protocol HomeViewOutputProtocol: class {
    var view: HomeViewInputProtocol? { get set }
    var interactor: HomeInteractorInputProtocol? { get set }
    var wireFrame: HomeWireFrameProtocol? { get set }
}

// MARK: - INTERACTOR
protocol HomeInteractorOutputProtocol: class {
}

// MARK: - PRESENTER
protocol HomeInteractorInputProtocol: class {
    var presenter: HomeInteractorOutputProtocol? { get set }
}

protocol HomeViewInputProtocol: class {
    var presenter: HomeViewOutputProtocol? { get set }
}

// MARK: - WIREFRAME
protocol HomeWireFrameProtocol: class {
}
