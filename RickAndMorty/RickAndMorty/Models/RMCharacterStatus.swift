//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Alibek Baisholanov on 19.10.2024.
//

import Foundation

enum RMCharacterStatus: String, Codable{
    //"Alive", "Dead", "unknown"
    
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
