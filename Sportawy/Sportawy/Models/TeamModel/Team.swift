//
//  Team.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/27/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
class Team: Codable {
    var teams: [TeamModel?]
    enum CodingKeys :String,CodingKey {
        case teams
    }
}
