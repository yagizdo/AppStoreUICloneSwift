//
//  ISearchService.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 14.04.2023.
//

import Foundation

protocol ISearchService {
    func fetchSearchData(searchText term: String,onSuccess: @escaping ([Result]) -> Void, onFailure: @escaping (Error) -> Void)
}
