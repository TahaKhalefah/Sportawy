//
//  EventModel.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/27/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation

class EventModel: Codable {
    var idEvent: String?
    var strEvent :String?
    var intHomeScore: String?
    var strTime: String?
    var dateEvent: String?
    
    var strHomeTeam: String?
    var strAwayTeam :String?
    var intAwayScore: String?
    var strStatus: String?
    var strThumb: String?
    
    enum CodingKeys: String, CodingKey {
        case idEvent
        case strEvent
        case intHomeScore
        case strTime
        case dateEvent
        
        case strHomeTeam
        case strAwayTeam
        case intAwayScore
        case strStatus
        case strThumb
        
    }
}
/*
 "idEvent": "1032865",
 "idSoccerXML": null,
 "idAPIfootball": "592314",
 "strEvent": "Leeds vs Southampton",
 "strEventAlternate": "Southampton @ Leeds",
 "strFilename": "English Premier League 2021-02-23 Leeds vs Southampton",
 "strSport": "Soccer",
 "idLeague": "4328",
 "strLeague": "English Premier League",
 "strSeason": "2020-2021",
 "strDescriptionEN": "",
 "strHomeTeam": "Leeds",
 "strAwayTeam": "Southampton",
 "intHomeScore": "3",
 "intRound": "18",
 "intAwayScore": "0",
 "intSpectators": null,
 "strOfficial": "",
 "strHomeGoalDetails": "",
 "strHomeRedCards": null,
 "strHomeYellowCards": null,
 "strHomeLineupGoalkeeper": null,
 "strHomeLineupDefense": null,
 "strHomeLineupMidfield": null,
 "strHomeLineupForward": null,
 "strHomeLineupSubstitutes": null,
 "strHomeFormation": null,
 "strAwayRedCards": null,
 "strAwayYellowCards": null,
 "strAwayGoalDetails": "",
 "strAwayLineupGoalkeeper": null,
 "strAwayLineupDefense": null,
 "strAwayLineupMidfield": null,
 "strAwayLineupForward": null,
 "strAwayLineupSubstitutes": null,
 "strAwayFormation": null,
 "intHomeShots": null,
 "intAwayShots": null,
 "strTimestamp": "2021-02-23T18:00:00+00:00",
 "dateEvent": "2021-02-23",
 "dateEventLocal": "2021-02-23",
 "strTime": "18:00:00",
 "strTimeLocal": "18:00:00",
 "strTVStation": null,
 "idHomeTeam": "133635",
 "idAwayTeam": "134778",
 "strResult": "",
 "strVenue": "Elland Road",
 "strCountry": "England",
 "strCity": "",
 "strPoster": null,
 "strSquare": null,
 "strFanart": null,
 "strThumb": "https://www.thesportsdb.com/images/media/event/thumb/6hvonf1603530611.jpg",
 "strBanner": null,
 "strMap": null,
 "strTweet1": "",
 "strTweet2": "",
 "strTweet3": "",
 "strVideo": "",
 "strStatus": "Match Finished",
 "strPostponed": "no",
 "strLocked": "unlocked"
 */
