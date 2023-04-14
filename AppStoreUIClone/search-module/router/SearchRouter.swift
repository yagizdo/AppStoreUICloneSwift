//
//  SearchRouter.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 13.04.2023.
//

import Foundation

class SearchRouter : PresenterToRouterSearchProtocol {
    static func createRef(ref: SearchViewController) {
        
        let searchPresenter = SearchPresenter()
        
        // View
        ref.searchPresenterDelegate = searchPresenter
        
        // Presenter
        ref.searchPresenterDelegate?.searchView = ref
        ref.searchPresenterDelegate?.searchInteractor = SearchInteractor()
        
        // Interactor
        ref.searchPresenterDelegate?.searchInteractor?.searchPresenter = searchPresenter
    }
}
