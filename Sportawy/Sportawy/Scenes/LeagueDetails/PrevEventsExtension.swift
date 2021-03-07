//
//  PrevEventsExtension.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/27/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
import UIKit

extension LeagueDetailsVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nextEventsArr!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "prevEventCell", for: indexPath) as! PrevEventCell
        cell.homeName.text = nextEventsArr![indexPath.row].strHomeTeam
        cell.statusLbl.text = nextEventsArr![indexPath.row].strStatus
        cell.awayName.text = nextEventsArr![indexPath.row].strAwayTeam
        cell.scoreAway.text = nextEventsArr![indexPath.row].intAwayScore
        cell.scoreHome.text = nextEventsArr![indexPath.row].intHomeScore
        for i in teamsArr!{
            if i.strTeam == nextEventsArr![indexPath.row].strHomeTeam{
                cell.teamHomeImage.sd_setImage(with: URL(string: i.strTeamBadge!), completed: nil)
            }
            else if i.strTeam == nextEventsArr![indexPath.row].strAwayTeam{
                cell.awayHomeImage.sd_setImage(with: URL(string: i.strTeamBadge!), completed: nil)
            }
        }
   
        cell.layer.cornerRadius = 16
        cell.layer.masksToBounds = true
        return cell
    }
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125;
    }
    
}
