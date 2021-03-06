//
//  LeagueDetailsModel.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/25/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation

class LeagueDetailsModel : Codable {
    var leagueId : String
    var strLeague : String?
    var strYoutube : String?
    var strBadge : String?
    
    enum CodingKeys : String, CodingKey {
        case leagueId = "idLeague"
        case strLeague = "strLeague"
        case strYoutube = "strYoutube"
        case strBadge = "strBadge"
    }
}
/*
 {
 "idLeague": "4346",
 "idSoccerXML": null,
 "idAPIfootball": "1264",
 "strSport": "Soccer",
 "strLeague": "American Major League Soccer",
 "strLeagueAlternate": "MLS, Major League Soccer",
 "strDivision": "0",
 "idCup": "0",
 "strCurrentSeason": "2020",
 "intFormedYear": "1993",
 "dateFirstEvent": "2013-03-02",
 "strGender": "Male",
 "strCountry": "United States",
 "strWebsite": "www.mlssoccer.com",
 "strFacebook": "www.facebook.com/MLS",
 "strTwitter": "twitter.com/mls",
 "strYoutube": "www.youtube.com/user/mls",
 "strRSS": "www.mlssoccer.com/news/feed",
 "strDescriptionEN": "Major League Soccer (MLS) is a professional soccer league representing the sport's highest level in both the United States and Canada. MLS constitutes one of the major professional sports leagues of the United States and Canada. The league is composed of 20 teams—17 in the U.S. and 3 in Canada. The MLS regular season runs from March to October, with each team playing 34 games; the team with the best record is awarded the Supporters' Shield. The post season includes twelve teams competing in the MLS Cup Playoffs through November and December, culminating in the championship game, the MLS Cup. MLS teams also play in other competitions against teams from other divisions and countries, such as the U.S. Open Cup, the Canadian Championship, and the CONCACAF Champions League. MLS is sanctioned by the United States Soccer Federation (U.S. Soccer).\r\n\r\nMajor League Soccer was founded in 1993 as part of the United States' successful bid to host the 1994 FIFA World Cup. The first season took place in 1996 with ten teams. MLS experienced financial and operational struggles in its first few years: The league lost millions of dollars, teams played in mostly empty American football stadiums, and two teams folded in 2002. Since then, MLS has expanded to 20 teams, owners built soccer-specific stadiums, average attendance at MLS matches exceeds that of the National Basketball Association (NBA) and the National Hockey League (NHL), MLS secured national TV contracts, and the league is now profitable.\r\n\r\nInstead of operating as an association of independently owned teams, MLS is a single entity in which each team is owned and controlled by the league's investors. The investor-operators control their teams as owners control teams in other leagues, and are commonly (but inaccurately) referred to as the team's owners. The league's closed membership makes it one of the world's few soccer leagues that does not use promotion and relegation, which is uncommon in North America. MLS headquarters are in New York City.",
 "strDescriptionDE": null,
 "strDescriptionFR": "La Major League Soccer (MLS), littéralement la Ligue majeure de soccer, est la principale ligue professionnelle de soccer (football) en Amérique du Nord. Elle a été créée en 1993. La première saison de cette ligue a eu lieu en 1996 avec 10 franchises. Elle comprend 20 franchises réparties aux États-Unis et au Canada (depuis 2007). La MLS est le plus haut niveau des compétitions de soccer de ces deux pays.\r\n\r\nComme pour la plupart des ligues sportives professionnelles nord-américaines, la ligue professionnelle est fermée. Elle ne se joue que par des franchises qui payent pour entrer dans la ligue. Il n'y a pas de système de relégation-promotion et les vingt franchises nord-américaines (dix-sept américaines, trois canadiennes) sont réparties en associations (Est et Ouest). La saison se termine par la finale MLS, disputée sur un match, qui conclut les séries éliminatoires.\r\n\r\nLa grande majorité des joueurs viennent des États-Unis et du Mexique, mais aussi de Jamaïque, du Canada et de Trinité-et-Tobago.",
 "strDescriptionIT": null,
 "strDescriptionCN": null,
 "strDescriptionJP": null,
 "strDescriptionRU": null,
 "strDescriptionES": null,
 "strDescriptionPT": null,
 "strDescriptionSE": null,
 "strDescriptionNL": null,
 "strDescriptionHU": null,
 "strDescriptionNO": null,
 "strDescriptionPL": null,
 "strDescriptionIL": null,
 "strFanart1": "https://www.thesportsdb.com/images/media/league/fanart/rsypuy1422060998.jpg",
 "strFanart2": "https://www.thesportsdb.com/images/media/league/fanart/yrpswv1422061048.jpg",
 "strFanart3": "https://www.thesportsdb.com/images/media/league/fanart/yuwxqr1422265356.jpg",
 "strFanart4": "https://www.thesportsdb.com/images/media/league/fanart/wxsqxt1422265392.jpg",
 "strBanner": "https://www.thesportsdb.com/images/media/league/banner/ycqd1a1557524672.jpg",
 "strBadge": "https://www.thesportsdb.com/images/media/league/badge/dqo6r91549878326.png",
 "strLogo": "https://www.thesportsdb.com/images/media/league/logo/yrxxpx1421700436.png",
 "strPoster": "https://www.thesportsdb.com/images/media/league/poster/upsqts1454015303.jpg",
 "strTrophy": "https://www.thesportsdb.com/images/media/league/trophy/rsqvts1422247468.png",
 "strNaming": "{strHomeTeam} vs {strAwayTeam}",
 "strComplete": "yes",
 "strLocked": "unlocked"
 }
 */
