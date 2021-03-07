//
//  EventsNetworking.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/27/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
import Alamofire

enum EventsNetworking {
    case getEvents(id: String)
}

extension EventsNetworking: TargetType {
    var baseURL: String {
        switch self {
        case .getEvents:
            return "https://www.thesportsdb.com/api/v1/json/1"
            
        }
    }
    
    var path: String {
        switch self {
        case .getEvents:
            return "/eventspastleague.php"
            
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getEvents:
            return .get
            
        }
    }
    
    var task: Task {
        switch self {
        case .getEvents(let id):
            return .requestParameters(parameters: ["id": id], encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default:
            return [:]
        }
    }
}
