//
//  RMService.swift
//  RickAndMorty
//
//  Created by Alibek Baisholanov on 19.10.2024.
//

import Foundation

//Singletone
/// Primary API service object to get Rick and Morty data
final class RMService{
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init(){}
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or err
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
