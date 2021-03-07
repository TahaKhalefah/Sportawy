//
//  League.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/24/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
class League: Codable {
    var leagues: [LeagueModel?]
    enum CodingKeys :String,CodingKey {
        case leagues
    }
}
