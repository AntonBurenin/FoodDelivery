//
//  MenuListCollectionViewController.swift
//  delivery
//
//  Created by Александр Бехтер on 11.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit



class MenuListCollectionViewController: UICollectionViewController {
    
    //MARK : - Public Property
     var dishes : [Dish]!
     var category : DishCategoryName!
    //MARK : - Private Property
    private let reuseIdentifier = "dishCell"
   
    //MARK : - Life Cycles View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = category.rawValue
        setupCollectionView()
    }
    
    //MARK : - Override Methods
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dishes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! DishCollectionViewCell
        cell.nameLabel.text = dishes[indexPath.item].name
    
        cell.priceLabel.text = "\(dishes[indexPath.item].price)"
        if let image = UIImage(named: dishes[indexPath.item].name) {
        
            cell.dishImage.image = image
        }
        return cell
    }
    
    //MARK : - Private Methods
    private func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = Constrants.minimumLineSpacing
        collectionView.contentInset = UIEdgeInsets(top: Constrants.topDistanceToView ,
                                                   left: Constrants.leftDistanceToView ,
                                                   bottom: Constrants.bottomDistanceToView,
                                                   right: Constrants.rightDistanceToView)
        layout.itemSize = CGSize(width: Constrants.width , height: Constrants.height)
        collectionView.collectionViewLayout = layout
    }
}

extension MenuListCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constrants.width, height: Constrants.height)
    }
}
