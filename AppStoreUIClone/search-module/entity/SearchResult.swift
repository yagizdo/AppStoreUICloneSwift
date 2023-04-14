//
//  SearchResult.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 14.04.2023.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results:[Result]
}

struct Result: Decodable {
    let screenshotUrls: [String]
    let trackName: String
    let primaryGenreName: String
    let artworkUrl100: String
    let averageUserRatingForCurrentVersion: Float?
}
