//
//  DishCollectionViewCell.swift
//  delivery
//
//  Created by Кирилл Крамар on 12.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class DishCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var dishImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var priceLabel: UILabel!
    
    
}

struct Constrants {
    static let leftDistanceToView: CGFloat = 10
      static let rightDistanceToView: CGFloat = 10
}