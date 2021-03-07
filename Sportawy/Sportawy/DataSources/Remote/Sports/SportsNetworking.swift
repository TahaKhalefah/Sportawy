//
//  SportsNetworking.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/22/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
import Alamofire

enum SportsNetworking {
    case getSports
}

extension SportsNetworking: TargetType {
    var baseURL: String {
        switch self {
        case .getSports:
            return "https://www.thesportsdb.com/api/v1/json/1"
      
        }
    }
    
    var path: String {
        switch self {
        case .getSports:
            return "/all_sports.php"

        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getSports:
            return .get

        }
    }
    
    var task: Task {
        switch self {
        case .getSports:
            return .requestPlain
    
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default:
            return [:]
        }
    }
}
