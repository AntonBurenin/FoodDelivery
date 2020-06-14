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
    
    @IBOutlet var dishCustomView: UIView!
    @IBOutlet var viewDish: UIView!
    var discr: String!
}
struct Constrants {
    static let leftDistanceToView: CGFloat = 20
    static let rightDistanceToView: CGFloat = 20
    static let minimumLineSpacing: CGFloat = 10
    static let topDistanceToView: CGFloat = 30
    static let bottomDistanceToView: CGFloat = 30
    static let width = 180
    static let height = 280
}
