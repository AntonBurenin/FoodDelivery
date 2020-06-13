//
//  CollectionDishViewController.swift
//  delivery
//
//  Created by Кирилл Крамар on 12.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class CollectionDishViewController: UIViewController {

    //MARK : - IB Outlets
    @IBOutlet var dishCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK : - Public Property
    var dishesInCategory : [Dish]!

}

//MARK : CollextionView Delegate
extension CollectionDishViewController: UICollectionViewDelegate {
    
}

//MARK : CollectionView DataSource
extension CollectionDishViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dishesInCategory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dishCell", for: indexPath) as! DishCollectionViewCell
        cell.nameLabel.text = dishesInCategory[indexPath.item].name
        cell.priceLabel.text = "\(dishesInCategory[indexPath.item].price)"
        if let image = UIImage(named: "\(dishesInCategory[indexPath.item].name)") {
            cell.dishImage.image = image
        }
        return cell
    }
    
    
}
