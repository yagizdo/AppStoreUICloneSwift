//
//  IAppsService.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 28.04.2023.
//

import Foundation

protocol IAppsService {
    func fetchAppsDetailData(onSuccess: @escaping ([Result]) -> Void, onFailure: @escaping (Error) -> Void)
}
