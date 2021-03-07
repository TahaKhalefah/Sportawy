//
//  LeagueDetailsVC.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/25/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import UIKit
import SDWebImage
import CoreData

class LeagueDetailsVC: UIViewController {
    
    
    
    @IBOutlet weak var nextEventCollectionView: UICollectionView!
    
    @IBOutlet weak var prevEventTableView: UITableView!
    
    @IBOutlet weak var teamCollectionView: UICollectionView!
    var id = ""
    var str = ""
    var nextEventsArr :[EventModel]? = Array()
    var teamsArr :[TeamModel]? = Array()
    var indx = 0;
    var db = DBManager.shared
    private var leag : LeagueDetailsModel?
    private var leagOffline : NSManagedObject?
    override func viewDidLoad() {
        super.viewDidLoad()
        
       /* nextEventCollectionView.delegate = self
        nextEventCollectionView.dataSource=self
        
        prevEventTableView.delegate = self
        prevEventTableView.dataSource=self
        
        teamCollectionView.delegate = self
        teamCollectionView.dataSource=self*/
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let l = leag{
            id = l.leagueId
        }else{
            id = leagOffline!.value(forKey: "leagueId") as! String
        }
       // getLeagueDetails()
        getNextEvents()
        getTeams()
    }
  
    func getNextEvents(){
        nextEventsArr?.removeAll()
        let api: EventsAPIProtocol = EventAPI()
        api.getEvents(by:id ,completion: { (result) in
            switch result {
            case .success(let response):
                let events = response?.events
                
                for event in events ?? [] {
                    self.nextEventsArr?.append(event)
                   
                }
                self.nextEventCollectionView.reloadData()
                self.prevEventTableView.reloadData()
            case .failure(let error):
                print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "")
            }
        })
    }
    func getTeams(){
        teamsArr?.removeAll()
        let api: TeamsAPIProtocol = TeamAPI()
        api.getTeams(by:id  ,completion: { (result) in
            switch result {
            case .success(let response):
                let teams = response?.teams
                
                for team in teams ?? [] {
                    self.teamsArr?.append(team)
                   
                }
                
                self.teamCollectionView.reloadData()
            case .failure(let error):
                print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "")
            }
        })
    }
    func setLeague(with league : LeagueDetailsModel) {
        self.leag = league
    }
    
    func setLeagueOffline(with league : NSManagedObject) {
        self.leagOffline = league
    }
    @IBAction func addToFavAction(_ sender: Any) {
          db.insertLeague(league: leag!)
    }
    
    @IBAction func backAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
