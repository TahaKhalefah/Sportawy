//
//  DBManager.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/27/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import UIKit
import CoreData
import Foundation

protocol LeaguesCoreDataProtocol {
    func getAllLeags(leaguesList : [NSManagedObject])
}
class DBManager{
    static let shared = DBManager()
    var delegate:LeaguesCoreDataProtocol?
    private var appDelegate :AppDelegate
    private let ENTITY_NAME = "LeagueEntity"
    
    private init() {
       // self.leaguesOfflineDelegate=leaguesOfflineDelegate
        appDelegate = UIApplication.shared.delegate as! AppDelegate
    }
    
    func insertLeague(league :LeagueDetailsModel){
        let mContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: ENTITY_NAME, in: mContext);
        let mov = NSManagedObject(entity :entity!,insertInto: mContext)
        
        mov.setValue(league.leagueId, forKey: "leagueId")
        mov.setValue(league.strLeague, forKey: "strLeague")
        mov.setValue(league.strBadge, forKey: "strBadge")
        mov.setValue(league.strYoutube, forKey: "strYoutube")
        print("add successfully")
        do{
            try mContext.save()
        }catch let error {
            print(error)
        }
    }
    
    func getAllLeagues() {
        var leaguesArr = [NSManagedObject]()
        
        let mContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: ENTITY_NAME)
        
        do{
            leaguesArr = try mContext.fetch(fetchRequest)
            self.delegate?.getAllLeags(leaguesList: leaguesArr)
        }catch let error{
            print(error)
        }
        
    }
    func deleteObject(id:String){
        var leaguesArray=[NSManagedObject]();
        
        let mContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: ENTITY_NAME);
        
        let predicate = NSPredicate(format: "leagueId = %@", id)
        fetchRequest.predicate = predicate
        
        do{
            leaguesArray = try mContext.fetch(fetchRequest);
        }catch let error{
            print(error)
        }
        
        for object in leaguesArray {
            mContext.delete(object)
        }
    }
    
    func deleteAllLeagues(){
        let mContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: ENTITY_NAME)
        fetchRequest.returnsObjectsAsFaults = false
        
        do
        {
            let results = try mContext.fetch(fetchRequest)
            for managedObject in results
            {
                let managedObjectData:NSManagedObject = managedObject
                mContext.delete(managedObjectData)
            }
        } catch let error as NSError {
            print("Detele all data in LeaguesEntity error : ",error)
        }
    }
    
}
