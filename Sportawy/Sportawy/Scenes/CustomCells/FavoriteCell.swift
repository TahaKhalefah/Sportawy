//
//  FavoriteCell.swift
//  Sportawy
//
//  Created by MacOSSierra on 3/1/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import UIKit

class FavoriteCell: UITableViewCell {

    @IBOutlet weak var leagueName: UILabel!
    
    @IBOutlet weak var leageImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func urlAction(_ sender: Any) {
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
