//
//  CustomTableViewCell.swift
//  delivery
//
//  Created by Александр Бехтер on 12.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
   
    @IBOutlet var contentCustomView: UIView!
    @IBOutlet var customView: UIView!
    @IBOutlet var customImageView: UIImageView!
    @IBOutlet var catigoriesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
