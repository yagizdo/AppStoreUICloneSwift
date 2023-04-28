//
//  AppsRouter.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 17.04.2023.
//

import Foundation

class AppsRouter: PresenterToRouterAppsProtocol {
    static func createModule(ref: AppsViewController) {
        let appsPresenter = AppsPresenter()
        
        // View
        ref.appsPresenterDelegate = appsPresenter
        
        // Presenter
        ref.appsPresenterDelegate?.appsView = ref
        ref.appsPresenterDelegate?.appsInteractor = AppsInteractor()
        
        // Interactor
        ref.appsPresenterDelegate?.appsInteractor?.appsPresenter = appsPresenter
    }
}
