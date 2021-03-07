//
//  PrevEventCell.swift
//  Sportawy
//
//  Created by MacOSSierra on 3/2/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import UIKit

class PrevEventCell: UITableViewCell {

    @IBOutlet weak var statusLbl: UILabel!
    @IBOutlet weak var awayHomeImage: UIImageView!
    @IBOutlet weak var teamHomeImage: UIImageView!
    @IBOutlet weak var awayName: UILabel!
    @IBOutlet weak var scoreAway: UILabel!
    @IBOutlet weak var scoreHome: UILabel!
    @IBOutlet weak var homeName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
