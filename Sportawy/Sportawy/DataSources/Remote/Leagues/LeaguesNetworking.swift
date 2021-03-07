//
//  LeaguesNetworking.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/24/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
import Alamofire

enum LeaguesNetworking {
    case getLeagues
    case getDetailedLeague(id: String)
}

extension LeaguesNetworking: TargetType {
    var baseURL: String {
        switch self {
//        case .getLeagues:
//            return "https://www.thesportsdb.com/api/v1/json/1"
//          case .getDetailedLeague(id: String)
//        }
        default:
            return "https://www.thesportsdb.com/api/v1/json/1"
        }
    }
    
    var path: String {
        switch self {
        case .getLeagues:
            return "/all_leagues.php"
        case .getDetailedLeague:
            return "/lookupleague.php"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getLeagues , .getDetailedLeague:
            return .get
            
        }
    }
    
    var task: Task {
        switch self {
        case .getLeagues:
            return .requestPlain
        case .getDetailedLeague(let id):
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
