//
//  AppsProtocols.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 17.04.2023.
//

import Foundation

protocol ViewToPresenterAppsProtocol {
    var appsView: PresenterToViewAppsProtocol? {get set}
    var appsInteractor: PresenterToInteractorAppsProtocol? {get set}
    
    func fetchApps()
}

protocol PresenterToInteractorAppsProtocol {
    var appsPresenter: InteractorToPresenterAppsProtocol? {get set}
    
    func fetchApps()
}

protocol PresenterToViewAppsProtocol {
    func sendDataToView(fetchedApps: Feed)
    func showError(error: Error)
}

protocol InteractorToPresenterAppsProtocol {
    func sendDataToView(fetchedApps: Feed)
    func showError(error: Error)
}

protocol PresenterToRouterAppsProtocol {
    static func createModule(ref:AppsViewController)
}
