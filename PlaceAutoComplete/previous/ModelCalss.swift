//
//  ModelCalss.swift
//  PlaceAutoComplete
//
//  Created by Refat E Ferdous on 12/12/23.
//

import Foundation

struct Place: Codable {
    let description: String
    let placeId: String

    enum CodingKeys: String, CodingKey {
        case description
        case placeId = "place_id"
    }
}

struct AutocompleteResponse: Codable {
    let predictions: [Place]
}
