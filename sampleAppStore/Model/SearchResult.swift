//
//  SearchResult.swift
//  sampleAppStore
//
//  Created by Takuma Osada on 2019/05/04.
//  Copyright © 2019 Takuma Osada. All rights reserved.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackId: Int
    let trackName: String
    let primaryGenreName: String
    let averageUserRating: Float?
    let screenshotUrls: [String]
    let artworkUrl100: String
    var formattedPrice: String?
    let description: String
    var releaseNotes: String?
}

