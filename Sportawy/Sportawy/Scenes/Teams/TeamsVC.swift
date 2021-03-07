//
//  TeamsVC.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/27/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import UIKit
import SDWebImage

class TeamsVC: UIViewController {
    
    

    @IBOutlet weak var capacityLbl: UILabel!
    @IBOutlet weak var stadNameLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var stadiumImage: UIImageView!
    @IBOutlet weak var yearLbl: UILabel!
    @IBOutlet weak var sportLbl: UILabel!
    @IBOutlet weak var leagueLbl: UILabel!
    @IBOutlet weak var alterLabel: UILabel!
    @IBOutlet weak var imageBadge: UIImageView!
    @IBOutlet weak var teamLogoImageView: UIImageView!
    
    private var team : TeamModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setTeam(team :TeamModel){
        self.team = team
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewWillAppear(_ animated: Bool) {
        teamLogoImageView.sd_setImage(with: URL(string:team!.strTeamLogo!), completed: nil)
        imageBadge.sd_setImage(with: URL(string:team!.strTeamBadge!), completed: nil)
       /* self.imageBadge.layer.borderWidth=2.0
        self.imageBadge.layer.masksToBounds = false
        self.imageBadge.layer.borderColor = UIColor.white.cgColor
        self.imageBadge.layer.cornerRadius = self.imageBadge.frame.size.width / 2
        self.imageBadge.clipsToBounds = true
        */
        stadiumImage.sd_setImage(with: URL(string:team!.strStadiumThumb!), completed: nil)
        
        alterLabel.text = team!.strAlternate
        leagueLbl.text = team!.strLeague
        
        sportLbl.text = team!.strSport
        yearLbl.text = team!.intFormedYear
        locationLbl.text = team!.strStadiumLocation
        stadNameLbl.text = team!.strStadium
        capacityLbl.text = team!.intStadiumCapacity
       
      
        
        self.stadiumImage.layer.masksToBounds = false
        self.stadiumImage.layer.borderColor = UIColor.white.cgColor
        self.stadiumImage.layer.cornerRadius = self.stadiumImage.frame.size.height/2
        self.stadiumImage.clipsToBounds = true
    }
    

    @IBAction func twitterAction(_ sender: Any) {
  
        if let url =  URL(string: "https://www.\(team!.strTwitter!)") {
            UIApplication.shared.open(url)
        }
    }
    @IBAction func instegramAction(_ sender: Any) {
        if let url =  URL(string: "https://www.\(team!.strInstagram!)") {
        UIApplication.shared.open(url)
        }
    }
    @IBAction func facebookAction(_ sender: Any) {
    
        if let url =  URL(string: "https://www.\(team!.strFacebook!)") {
            UIApplication.shared.open(url)
        }
    }
    @IBAction func youtubeAction(_ sender: Any) {

        if let url =  URL(string: "https://www.\(team!.strYoutube!)") {
            UIApplication.shared.open(url)
        }
    }
    @IBAction func webAction(_ sender: Any) {

        if let url =  URL(string: "https://www.\(team!.strWebsite!)") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func backAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
