//
//  SearchPresenter.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 13.04.2023.
//

import Foundation

class SearchPresenter : ViewToPresenterSearchProtocol {
    var searchView: PresenterToViewSearchProtocol?
    var searchInteractor: PresenterToInteractorSearchProtocol?
    
    func searchApp(searchText: String) {
        searchInteractor?.searchApp(searchText: searchText)
    }
}

extension SearchPresenter: InteractorToPresenterSearchProtocol {
    func sendDataToView(searchedApps: [Result]) {
        searchView?.sendDataToView(searchedApps: searchedApps)
    }
    
    func showError(error: Error) {
        searchView?.showError(error: error)
    }
}
