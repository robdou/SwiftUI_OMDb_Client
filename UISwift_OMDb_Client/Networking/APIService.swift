//
//  APIController.swift
//  OMDb-client
//
//  Created by Robin Douglas on 15/05/2019.
//  Copyright © 2019 Robin Douglas. All rights reserved.
//

import UIKit

enum APIError: Error {
    case noData
}

class APIService {

    private static let endpoint = "https://www.omdbapi.com/?apikey=4359bcbe&s="

    static func searchOMDb(for search: String, completion: @escaping (Result<OMDbSearch, Error>) -> Void) {
        URLSession.shared.dataTask(with: URL(string: endpoint + search.replacingOccurrences(of: " ", with: ""))!) { (data, _, error) in
            guard let data = data else { completion(.failure(APIError.noData)); return }
            do {
                let search = try JSONDecoder().decode(OMDbSearch.self, from: data)
                completion(.success(search))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }

}
