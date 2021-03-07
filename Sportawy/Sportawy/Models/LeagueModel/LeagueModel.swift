//
//  LeagueModel.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/24/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
class LeagueModel: Codable {
    var idLeague: String?
    var strLeague :String?
    var strSport: String?
    var strLeagueAlternate: String?
    
    enum CodingKeys: String, CodingKey {
        case idLeague
        case strLeague
        case strSport
        case strLeagueAlternate

    }
}
/*
 "idLeague": "4328",
 "strLeague": "English Premier League",
 "strSport": "Soccer",
 "strLeagueAlternate": "Premier League"
 */
