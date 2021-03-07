//
//  LeaguesVC.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/24/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import UIKit
import SDWebImage
class LeaguesVC: UITableViewController {
    

    private var indx = 0;
    var leaguesArr :[LeagueDetailsModel]? = Array()
    var mySport : String!;
    var leageDetailsVC:LeagueDetailsVC?
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if(mySport != nil){
        leaguesArr!.removeAll()
        let api: LeaguesAPIProtocol = LeaguesAPI()
        api.getLeagues { (result) in
            switch result {
            case .success(let response):
                let leagues = response?.leagues
                
                for league in leagues ?? [] {
                    if(league.strSport == self.mySport){
                        self.getLeagueDetails(id: league.idLeague!)
                    }
                }
               
            case .failure(let error):
                print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "")
            }
        }
        }
    }
    
    func getLeagueDetails(id : String){
        let api: LeaguesAPIProtocol = LeaguesAPI()
        api.getLeagueDetailes(by:id ,completion: { (result) in
            switch result {
            case .success(let response):
                let leagueDetails = response?.leagues
                
                for league in leagueDetails ?? [] {
                    self.leaguesArr?.append(league)
                }
                 self.tableView.reloadData()
            case .failure(let error):
                print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "")
            }
        })
    }
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "fromLeagueToLeagueDetails"){
            let dis = segue.destination as! LeagueDetailsVC
            dis.setLeague(with: leaguesArr![indx])
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return leaguesArr!.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "leagueCell", for: indexPath) as! LeaguesCell
        
        // Configure the cell...
        cell.leagueName.text = leaguesArr![indexPath.row].strLeague
        if let imsgeUrl = leaguesArr![indexPath.row].strBadge {
            cell.leagueImage.sd_setImage(with: URL(string: imsgeUrl), placeholderImage: UIImage())
        }
        cell.delegate = self
        cell.index = indexPath
        
        cell.layer.cornerRadius = 16
        cell.layer.masksToBounds = true
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135;
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indx = indexPath.row
        performSegue(withIdentifier: "fromLeagueToLeagueDetails", sender: self)
    }
    

    
}

extension LeaguesVC : DemoClickDelegate{
    func onClick(index: Int) {
        let url = URL(string:"http://\(leaguesArr![index].strYoutube!)")!
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    
}
