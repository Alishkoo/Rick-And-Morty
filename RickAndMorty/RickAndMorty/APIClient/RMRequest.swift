//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Alibek Baisholanov on 19.10.2024.
//

import Foundation


/// Object that represents a singlet API call
final class RMRequest{
    ///API Constants
    private struct Constants{
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndPoint
    
    /// Path components for API
    private let pathComponents: Set<String>
    
    ///Query parameters
    private let queryParameters: [URLQueryItem]
    
    ///Constructed URL  in String fornat
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty{
            string += "?"
            //name=value&name=value
            let argumentString = queryParameters.compactMap({
                //$0 the current element in iteration
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
            
        return string
    }
    
    ///Desired http method
    public let httpMethod = "GET "
    
    // MARK: - Public
    
    ///Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of pathComponents
    ///   - queryParameters: Collection of query parameters
    public init(
        endpoint: RMEndPoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ){
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
   
}
