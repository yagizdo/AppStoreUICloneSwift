//
//  AppsService.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 28.04.2023.
//

import Foundation
import Alamofire

class AppsService : IAppsService {
    
    static let shared = AppsService()
    
    private init(){}
    
    func fetchAppsDetailData(onSuccess: @escaping (Feed) -> Void, onFailure: @escaping (Error) -> Void) {

        guard let baseURL = URL(string: "https://rss.applemarketingtools.com/api/v2/tr/apps/top-free/25/apps.json") else {return}
            AF.request(baseURL,method: .get).response {
            response in
            do {
                if let error = response.error {
                    throw(error)
                }
                
                if let data = response.data {
                    let appsDetailResult = try JSONDecoder().decode(AppModel.self, from: data)
                    onSuccess(appsDetailResult.feed)
                    print(String(data: data, encoding: .utf8))
                }
            } catch let error {
                print(error.localizedDescription)
                onFailure(error)
            }
        }
    }
    
    
}
