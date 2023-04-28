//
//  AppsInteractor.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 17.04.2023.
//

import Foundation

class AppsInteractor : PresenterToInteractorAppsProtocol {
    var appsPresenter: InteractorToPresenterAppsProtocol?
    
    func fetchApps() {
        print("Interactor metod calisti")
        AppsService.shared.fetchAppsDetailData { feed in
            self.appsPresenter?.sendDataToView(fetchedApps: feed)
        } onFailure: { error in
            self.appsPresenter?.showError(error: error)
        }

    }
}
