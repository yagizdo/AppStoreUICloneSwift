//
//  SearchProtocols.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 13.04.2023.
//

import Foundation

protocol ViewToPresenterSearchProtocol {
    var searchView: PresenterToViewSearchProtocol? {get set}
    var searchInteractor: PresenterToInteractorSearchProtocol? { get set }
    
    func searchApp(searchText: String)
}

protocol PresenterToInteractorSearchProtocol {
    var searchPresenter: InteractorToPresenterSearchProtocol? {get set}
    
    func searchApp(searchText: String)
}

protocol PresenterToViewSearchProtocol {
    func sendDataToView(searchedApps: [Result])
    func showError(error: Error)
}

protocol InteractorToPresenterSearchProtocol {
    func sendDataToView(searchedApps: [Result])
    func showError(error: Error)
}

protocol PresenterToRouterSearchProtocol {
    static func createRef(ref: SearchViewController)
}
