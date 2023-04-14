//
//  SearchInteractor.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 13.04.2023.
//

import Foundation

class SearchInteractor : PresenterToInteractorSearchProtocol {
    var searchPresenter: InteractorToPresenterSearchProtocol?
    
    func searchApp(searchText: String) {
        SearchService.shared.fetchSearchData(searchText: searchText) { searchedApps in
            self.searchPresenter?.sendDataToView(searchedApps: searchedApps)
        } onFailure: { error in
            self.searchPresenter?.showError(error: error)
        }

    }
}
