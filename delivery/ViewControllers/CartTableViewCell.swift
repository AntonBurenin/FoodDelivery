//
//  CartTableViewCell.swift
//  delivery
//
//  Created by Bober on 12/06/2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class CartTableViewCell: UITableViewCell {
  
    @IBOutlet var stepperCustom: UIStepper!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    
    @IBOutlet var contentViewPhoto: UIView!
    @IBOutlet var photoView: UIView!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        stepperCustom.customViewDesing()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func stepperAction() {
    }
    
}
