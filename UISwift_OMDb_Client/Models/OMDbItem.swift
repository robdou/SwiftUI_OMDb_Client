//
//  OMDbItem.swift
//  OMDb-client
//
//  Created by Robin Douglas on 15/05/2019.
//  Copyright © 2019 Robin Douglas. All rights reserved.
//

import SwiftUI
import Combine

final class MovieDataBO: BindableObject {
    let didChange = PassthroughSubject<MovieDataBO, Never>()

    init(search: String) {
        searchString = search
    }

    var searchString: String {
        didSet {
            #warning("do search here?")
        }
    }

    var movies: [OMDbItem] = [
        OMDbItem(id: "0", title: "test", year: "test", poster: "test")
        ] {
        didSet {
            didChange.send(self)
        }
    }
}

struct OMDbSearch: Codable {
    let search: [OMDbItem]?

    enum CodingKeys: String, CodingKey {
        case search = "Search"
    }
}

struct OMDbItem: Codable, Identifiable {
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
