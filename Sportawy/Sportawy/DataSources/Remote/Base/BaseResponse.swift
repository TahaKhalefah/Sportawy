//
//  BaseResponse.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/22/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
class BaseResponse<T: Codable>: Codable {
    var leagues: T?
    var sports: T?
    var teams: T?
    var events: T?
    
    enum CodingKeys: String, CodingKey {
        case leagues = "leagues"
        case sports = "sports"
        case teams = "teams"
        case events = "events"
    }
}
