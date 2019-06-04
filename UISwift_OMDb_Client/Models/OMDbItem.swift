//
//  OMDbItem.swift
//  OMDb-client
//
//  Created by Robin Douglas on 15/05/2019.
//  Copyright © 2019 Robin Douglas. All rights reserved.
//

import Foundation

struct OMDbSearch: Codable {
    let search: [OMDbItem]?

    enum CodingKeys: String, CodingKey {
        case search = "Search"
    }
}

struct OMDbItem: Codable {
    let id: String
    let title: String?
    let year: String?
    let poster: String?

    enum CodingKeys: String, CodingKey {
        case id     = "imdbID"
        case title  = "Title"
        case year   = "Year"
        case poster = "Poster"
    }
}
