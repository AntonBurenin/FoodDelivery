//
//  CartTableViewCell.swift
//  delivery
//
//  Created by Bober on 12/06/2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

protocol CartTableViewCellDelegate: class {
    func didTappedStepper(cell: CartTableViewCell)
}

class CartTableViewCell: UITableViewCell {
  
    @IBOutlet var stepperCustom: UIStepper!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var countStepper: UIStepper!
    
    @IBOutlet var contentViewPhoto: UIView!
    @IBOutlet var photoView: UIView!
    @IBOutlet weak var photoImageView: UIImageView!
    
    var delegate: CartTableViewCellDelegate!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        stepperCustom.customViewDesing()
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        delegate.didTappedStepper(cell: self)
    }
    
    func constructTextForCountLabel() -> String {
        return "x " + String(Int(countStepper.value)) + " шт."
    }
    
}
