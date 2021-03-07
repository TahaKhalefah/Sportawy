//
//  NextEventsExtension.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/27/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//
import UIKit
import Foundation

extension LeagueDetailsVC : UICollectionViewDelegate, UICollectionViewDataSource{
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "fromDetailsToTeam"){
            let dis = segue.destination as! TeamsVC
            dis.setTeam(team: teamsArr![indx])
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == self.nextEventCollectionView) {
             return nextEventsArr!.count
        }else{
          return teamsArr!.count
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 4, left: 16.0, bottom: 8.0, right: 16.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(collectionView == self.nextEventCollectionView){
        let cell :NextEventCell = collectionView.dequeueReusableCell(withReuseIdentifier: "nextEventCell", for: indexPath) as! NextEventCell
        
        cell.dateLabel.text = nextEventsArr![indexPath.row].dateEvent
        cell.teamsTitleLabel.text = nextEventsArr![indexPath.row].strEvent
        cell.timeLabel.text = nextEventsArr![indexPath.row].strTime
            cell.layer.cornerRadius = 16
            cell.layer.masksToBounds = true
             return cell
        }else{
            let cell :TeamCell = collectionView.dequeueReusableCell(withReuseIdentifier: "teamCell", for: indexPath) as! TeamCell
            cell.teamLogoImageView!.sd_setImage(with: URL(string:teamsArr![indexPath.row].strTeamBadge!))
            cell.layer.cornerRadius = 32
            cell.layer.masksToBounds = true
             return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        /*  if(leageVC != nil){
         leageVC!.mySport = sportsArr![indexPath.row].strSport
         self.navigationController?.pushViewController(leageVC!, animated: true)
         }
         */
//        vari = indexPath.row
        if(collectionView == self.teamCollectionView){
            indx = indexPath.row
            self.performSegue(withIdentifier:"fromDetailsToTeam", sender: self)
        }
    }
}
