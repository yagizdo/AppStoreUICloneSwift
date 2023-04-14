//
//  SearchService.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 14.04.2023.
//

import Foundation
import Alamofire

class SearchService : ISearchService {
    
    static let shared = SearchService()
    
    private init(){}
    
    func fetchSearchData(searchText term: String) {
        let baseURL = "https://itunes.apple.com/search"
        let params = ["entity":"software","term":term]
            AF.request(baseURL,method: .get,parameters: params).response {
            response in
            do {
                if let error = response.error {
                    throw(error)
                }
                
                if let data = response.data {
                    print(String(data: data, encoding: .utf8))
                }
            } catch {
                
            }
        }
      
    }
}
