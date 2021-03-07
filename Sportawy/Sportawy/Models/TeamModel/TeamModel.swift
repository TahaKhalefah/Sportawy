//
//  TeamModel.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/27/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation

class TeamModel: Codable {
    var idTeam: String?
    var strTeam :String?
    var strTeamLogo: String?
    var strTeamBadge : String?
    
    var strAlternate: String?
    var strStadium :String?
    var strLeague: String?
    var strWebsite : String?
    
    var strFacebook: String?
    var strTwitter :String?
    var strYoutube: String?
    var strInstagram : String?
    
    var intFormedYear: String?
    var strSport :String?
    var strStadiumLocation: String?
    var intStadiumCapacity : String?
    var strStadiumThumb : String?
    
    enum CodingKeys: String, CodingKey {
        case idTeam
        case strTeam//
        case strTeamLogo//
        case strTeamBadge//
        
        case strAlternate//
        case strStadium//
        case strLeague//
        case strWebsite//
        
        case strFacebook//
        case strTwitter//
        case strYoutube//
        case strInstagram//
        
        case intFormedYear//
        case strSport//
        case strStadiumLocation//
        case intStadiumCapacity//
        case strStadiumThumb//
        
    }
}
/*
 {
 "idTeam": "133604",////////
 "idSoccerXML": "9",
 "idAPIfootball": "42",
 "intLoved": "4",
 "strTeam": "Arsenal",////////
 "strTeamShort": "Ars",
 "strAlternate": "Gunners, Arsenal Football Club, AFC",
 "intFormedYear": "1892",
 "strSport": "Soccer",
 "strLeague": "English Premier League",
 "idLeague": "4328",
 "strLeague2": "UEFA Europa League",
 "idLeague2": "4481",
 "strLeague3": "FA Cup",
 "idLeague3": "4482",
 "strLeague4": "EFL Cup",
 "idLeague4": "4570",
 "strLeague5": "FA Community Shield",
 "idLeague5": "4571",
 "strLeague6": "",
 "idLeague6": null,
 "strLeague7": "",
 "idLeague7": null,
 "strDivision": null,
 "strManager": "",
 "strStadium": "Emirates Stadium",
 "strKeywords": "Gunners, Gooners",
 "strRSS": "https://www.allarsenal.com/feed/",
 "strStadiumThumb": "https://www.thesportsdb.com/images/media/team/stadium/w1anwa1588432105.jpg",
 "strStadiumDescription": "The Emirates Stadium (known as Ashburton Grove prior
 "strStadiumLocation": "Holloway, London",
 "intStadiumCapacity": "60338",
 "strWebsite": "www.arsenal.com",
 "strFacebook": "www.facebook.com/Arsenal",
 "strTwitter": "twitter.com/arsenal",
 "strInstagram": "instagram.com/arsenal",
 "strDescriptionEN": "Arsenal Football Club is a professional football club
 "strDescriptionDE": "Der FC Arsenal (offiziell: Arsenal Football Club) – auch
 "strDescriptionFR": "Arsenal Football Club est un club de football anglais
 "strDescriptionCN": null,
 "strDescriptionIT": "L'Arsenal Football Club, noto semplicemente come Arsenal,
 "strDescriptionJP": "アーセナル・フットボール・クラブ（Arsenal Football
 "strDescriptionRU": "«Арсена́л» (официальное полное название — Футбольный клуб
 "strDescriptionES": "El Arsenal Football Club (pronunciación en inglés:
 "strDescriptionPT": "Arsenal Football Club é um clube de futebol, fundado e
 "strDescriptionSE": null,
 "strDescriptionNL": null,
 "strDescriptionHU": null,
 "strDescriptionNO": "Arsenal Football Club er en engelsk fotballklubb som
 "strDescriptionIL": null,
 "strDescriptionPL": null,
 "strGender": "Male",
 "strCountry": "England",
 "strTeamBadge"://///// "https://www.thesportsdb.com/images/media/team/badge/uyhbfe1612467038.png",
 "strTeamJersey": "https://www.thesportsdb.com/images/media/team/jersey/mpintc1586884343.png",
 "strTeamLogo"://///// "https://www.thesportsdb.com/images/media/team/logo/q2mxlz1512644512.png",
 "strTeamFanart1": "https://www.thesportsdb.com/images/media/team/fanart/xyusxr1419347566.jpg",
 "strTeamFanart2": "https://www.thesportsdb.com/images/media/team/fanart/qttspr1419347612.jpg",
 "strTeamFanart3": "https://www.thesportsdb.com/images/media/team/fanart/uwssqx1420884450.jpg",
 "strTeamFanart4": "https://www.thesportsdb.com/images/media/team/fanart/qtprsw1420884964.jpg",
 "strTeamBanner": "https://www.thesportsdb.com/images/media/team/banner/rtpsrr1419351049.jpg",
 "strYoutube": "www.youtube.com/user/ArsenalTour",
 "strLocked": "unlocked"
 }
 */
