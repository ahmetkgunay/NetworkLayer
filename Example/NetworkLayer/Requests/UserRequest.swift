//
//  UserRequest.swift
//  NetworkLayer
//
//  Created by AHMET KAZIM GUNAY on 29/10/2017.
//  Copyright © 2017 AHMET KAZIM GUNAY. All rights reserved.
//

import Foundation

final class UserRequest: Requestable {
    
    typealias ResponseType = UserResponse
    
    private var userName : String
    
    init(userName:String) {
        self.userName = userName
    }
    
    var baseUrl: URL {
        return  URL(string: "https://api.github.com/")!
    }
    
    var endpoint: String {
        return "users/\(self.userName)"
    }
    
    var method: Network.Method {
        return .get
    }
    
    var query: Network.QueryType {
        return .path
    }
    
    var parameters: [String : Any]? {
        return nil
    }
    
    var headers: [String : String]? {
        return defaultJSONHeader
    }
    
    var timeout: TimeInterval {
        return 30.0
    }
    
    var cachePolicy: NSURLRequest.CachePolicy {
        return .reloadIgnoringLocalAndRemoteCacheData
    }
}
