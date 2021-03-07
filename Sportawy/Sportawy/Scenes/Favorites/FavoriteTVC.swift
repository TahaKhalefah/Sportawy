//
//  FavoriteTVC.swift
//  Sportawy
//
//  Created by MacOSSierra on 3/5/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import UIKit
import CoreData
import SDWebImage
import Reachability

let reachability = try! Reachability()

class FavoriteTVC: UITableViewController {
    
    private var indx = 0;
    var isOnline=false;
    var db = DBManager.shared
    var favArr = [NSManagedObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        db.delegate = self
        checkNetworkConnection()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        db.getAllLeagues()
        self.tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "fromFavToDetails"){
            let dis = segue.destination as! LeagueDetailsVC
            dis.setLeagueOffline(with: favArr[indx])
        }
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return favArr.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favCell", for: indexPath) as! FavoriteCell

        cell.leageImageView.sd_setImage(with: URL(string: favArr[indexPath.row].value(forKey: "strBadge") as! String), completed: nil)
        cell.leagueName.text = (favArr[indexPath.row].value(forKey: "strLeague") as! String);
        cell.layer.cornerRadius = 16
        cell.layer.masksToBounds = true
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135;
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
            db.deleteObject(id: favArr[indexPath.row].value(forKey: "leagueId") as! String)
            self.db.getAllLeagues()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if isOnline{
        indx = indexPath.row
        performSegue(withIdentifier: "fromFavToDetails", sender: self)
        }else{
            // create the alert
            let alert = UIAlertController(title: "Info", message: "Please check connection.", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
    }
}

extension FavoriteTVC : LeaguesCoreDataProtocol{
    func getAllLeags(leaguesList: [NSManagedObject]) {
        self.favArr=leaguesList;
        DispatchQueue.main.async {
            self.tableView.reloadData();
        }
    }
}

extension FavoriteTVC{
    func checkNetworkConnection(){
        reachability.whenReachable = { reachability in
            if reachability.connection == .wifi {
                print("Reachable via WiFi")
            } else {
                print("Reachable via Cellular")
            }
            self.isOnline=true;
        }
        reachability.whenUnreachable = { _ in
            print("Not reachable")
            self.isOnline=false
        }

        do {
            try reachability.startNotifier()
        } catch {
            print("Unable to start notifier")
        }
        
    }
}
