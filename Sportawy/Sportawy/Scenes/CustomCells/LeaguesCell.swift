//
//  LeaguesCell.swift
//  Sportawy
//
//  Created by MacOSSierra on 3/5/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import UIKit
// create protocol
// func url clicke

protocol DemoClickDelegate {
    func onClick(index : Int);
}

class LeaguesCell: UITableViewCell {
// reftrance
    
    var  delegate :DemoClickDelegate?
    var index : IndexPath?
    @IBAction func openUrlAction(_ sender: Any) {
        delegate?.onClick(index: index!.row)
    }
    
    @IBOutlet weak var leagueName: UILabel!
    @IBOutlet weak var leagueImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
