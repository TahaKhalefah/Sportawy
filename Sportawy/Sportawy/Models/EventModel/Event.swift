//
//  Event.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/27/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
class Event: Codable {
    var events: [EventModel?]
    enum CodingKeys :String,CodingKey {
        case events
    }
}
