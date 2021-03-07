//
//  Sport.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/22/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
class Sport: Codable {
    var sports: [SportModel?]
    enum CodingKeys :String,CodingKey {
        case sports
    }
}
