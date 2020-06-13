//
//  MenuListCollectionViewController.swift
//  delivery
//
//  Created by Александр Бехтер on 11.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit



class MenuListCollectionViewController: UICollectionViewController {
    
    
    private let reuseIdentifier = "dishCell"
   
    var dishes : [Dish]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // collectionView.translatesAutoresizingMaskIntoConstraints = false
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        collectionView.contentInset = UIEdgeInsets(top: 15, left: 10, bottom: 10, right: 15)
        layout.itemSize = CGSize(width: 143, height: 235)
        collectionView.collectionViewLayout = layout
       
        
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dishes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! DishCollectionViewCell
        
        //print(cell)
        
        cell.nameLabel.text = dishes[indexPath.item].name
    
        cell.priceLabel.text = "\(dishes[indexPath.item].price)"
        if let image = UIImage(named: dishes[indexPath.item].name) {
        
            cell.dishImage.image = image
        }
        return cell
    }
}

extension MenuListCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 143, height: 235)
    }
}
