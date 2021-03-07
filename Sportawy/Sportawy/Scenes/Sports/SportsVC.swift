//
//  SportsController.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/22/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import UIKit
import SDWebImage

private let reuseIdentifier = "sportCell"

class SportsVC: UICollectionViewController , UICollectionViewDelegateFlowLayout {
    
    
    
    @IBOutlet weak var img_WidthConstraint: NSLayoutConstraint!
    var sportsArr :[SportModel]? = Array()
       var leageVC:LeaguesVC?
    var vari = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
    
        leageVC = self.storyboard?.instantiateViewController(withIdentifier: "leaguesSB") as! LeaguesVC
      getSports()
        	
    }
    func getSports() -> Void {
        let api: SportsAPIProtocol = SportAPI()
        api.getSports { (result) in
            switch result {
            case .success(let response):
                let sports = response?.sports
                
                for sport in sports ?? [] {
                    self.sportsArr?.append(sport)
                    print("\(sport.strSport ?? "")")
                }
                self.collectionView.reloadData()
            case .failure(let error):
                print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "")
            }
        }
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if(segue.identifier == "fromSportToLeague"){
//            let dis = segue.destination as! LeaguesVC
//            dis.mySport = sportsArr![vari].strSport
//
//        }
//    }
//
    
    // MARK: UICollectionViewDataSource
    
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 4, left: 6.0, bottom: 16.0, right: 6.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return sportsArr!.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : SportsCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! SportsCell
        
        // Configure the cell
        cell.sportNameLabel.text = sportsArr![indexPath.row].strSport
        cell.sportImage.sd_setImage(with: URL(string: sportsArr![indexPath.row].strSportThumb!), placeholderImage: UIImage(named: "placeholder.png"))
        // cell.sportImage.kf.setImage(with: URL(string: sportsArr![indexPath.row].strSportThumb!))
        let collectionViewWidth  = collectionView.frame.width
        cell.img_WidthCons.constant = collectionViewWidth / 2
        
        cell.layer.cornerRadius = 16
        cell.layer.masksToBounds = true
        return cell
    }

   
  /*  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        
        return CGSize(width: width, height: height)
    }*/
    // MARK: UICollectionViewDelegate
    
    /*
     // Uncomment this method to specify if the specified item should be highlighted during tracking
     override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment this method to specify if the specified item should be selected
     override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
     override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
     
     }
     */
    
    

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         if(leageVC != nil){
         leageVC!.mySport = sportsArr![indexPath.row].strSport
         self.navigationController?.pushViewController(leageVC!, animated: true)
         }
 
      //  vari = indexPath.row
       
      
    
//        self.present(<#T##viewControllerToPresent: UIViewController##UIViewController#>, animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)//(withIdentifier:"fromSportToLeague", sender: self)
//
    }
    
}
