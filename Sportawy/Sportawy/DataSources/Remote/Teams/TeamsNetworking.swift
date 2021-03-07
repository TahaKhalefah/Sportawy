//
//  TeamsNetworking.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/25/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
import Alamofire

enum TeamsNetworking {
    case getTeams(id: String)
}

extension TeamsNetworking: TargetType {
    var baseURL: String {
        switch self {
        case .getTeams:
            return "https://www.thesportsdb.com/api/v1/json/1"
            
        }
    }
    
    var path: String {
        switch self {
        case .getTeams:
            return "/lookup_all_teams.php"
            
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getTeams:
            return .get
            
        }
    }
    
    var task: Task {
        switch self {
        case .getTeams(let id):
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
