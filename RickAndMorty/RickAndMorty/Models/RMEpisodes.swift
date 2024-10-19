//
//  RMEpisodes.swift
//  RickAndMorty
//
//  Created by Alibek Baisholanov on 18.10.2024.
//

import Foundation

struct RMEpisodes: Codable{
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}

