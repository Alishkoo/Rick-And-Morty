//
//  RMEndPoint.swift
//  RickAndMorty
//
//  Created by Alibek Baisholanov on 19.10.2024.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndPoint: String{
    ///Endpoint to get character info
    case character
    ///Endpoint to get location info
    case location
    ///Endpoint to get episode info
    case episode
}
