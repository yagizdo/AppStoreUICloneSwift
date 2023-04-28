//
//  AppsPresenter.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 17.04.2023.
//

import Foundation

class AppsPresenter: ViewToPresenterAppsProtocol {
    var appsView: PresenterToViewAppsProtocol?
    var appsInteractor: PresenterToInteractorAppsProtocol?
    
    func fetchApps() {
        appsInteractor?.fetchApps()
    }
}

// MARK: - Helper protocol
extension AppsPresenter: InteractorToPresenterAppsProtocol {
    func sendDataToView(fetchedApps: Feed) {
        appsView?.sendDataToView(fetchedApps: fetchedApps)
    }
    
    func showError(error: Error) {
        appsView?.showError(error: error)
    }
}
