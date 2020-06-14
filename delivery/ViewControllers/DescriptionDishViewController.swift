//
//  DescriptionDishViewController.swift
//  delivery
//
//  Created by Александр Бехтер on 11.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class DescriptionDishViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
  
    @IBOutlet var descriptionTextView: UITextView!
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var dishImageView: UIImageView!
    @IBOutlet var viewCustom: UIView!
    @IBOutlet var cardButton: UIButton!
    
    var nameDish: String!
    var price: String!
    var dishImage: UIImage?
    var descriptionText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = nameDish
        priceLabel.text = "\(price.description) p"
        dishImageView.image = dishImage
        descriptionTextView.text = descriptionText
        
        contentView.desinView()
        dishImageView.desinView()
        viewCustom.desinView()
        cardButton.desinView()
        descriptionTextView.desinView()
    }
    
    @IBAction func cartButtonPressed() {
        
    }
}


extension UIView {
    func desinView() {
        self.layer.cornerRadius = self.frame.width / 19
        self.layer.shadowOpacity = 1.5
        self.layer.shadowRadius = 4
        self.layer.shadowOffset = CGSize.zero
    }
}
