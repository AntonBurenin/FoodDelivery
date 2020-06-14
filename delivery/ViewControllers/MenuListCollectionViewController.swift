//
//  MenuListCollectionViewController.swift
//  delivery
//
//  Created by Александр Бехтер on 11.06.2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class MenuListCollectionViewController: UICollectionViewController {
    
    //MARK: - Public Property
    var dishes : [Dish]!
    var category : DishCategoryName!
    //MARK: - Private Property
    private let reuseIdentifier = "dishCell"
    
    //MARK : - Life Cycles View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = category.rawValue.capitalized
        setupCollectionView()
        addButtonCart()
    }
    
    //MARK: - Override Methods
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dishes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! DishCollectionViewCell
        
        cell.dish = dishes[indexPath.item]
        cell.nameLabel.text = dishes[indexPath.item].name
        cell.priceLabel.text = "\(dishes[indexPath.item].price)"
        if let image = UIImage(named: dishes[indexPath.item].name) {
            cell.dishImage.image = image
        }
        cell.dishImage.customView()
        cell.dishCustomView.customView()
        cell.viewDish.layer.cornerRadius = cell.viewDish.frame.width / 6
        
        return cell
    }
    
    //MARK: - Private Methods
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
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = collectionView.indexPathsForSelectedItems  else { return }
        guard let numberofitem = indexPath.first else { return }
        let descriptionDishVC = segue.destination as! DescriptionDishViewController
        descriptionDishVC.dish = dishes[numberofitem.item]
        
    }
    
    private func addButtonCart() {
        let cartButton = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(goToCart))
        navigationItem.setRightBarButton(cartButton, animated: true)
    }
    
    //MARK : - Selectors
    
    @objc func goToCart() {
        performSegue(withIdentifier: "CartStoryboard", sender: nil)
    }
    
}

extension MenuListCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constrants.width, height: Constrants.height)
    }
}

extension UIView {
    func customView() {
        self.layer.cornerRadius = self.frame.width / 6
        self.layer.shadowOpacity = 1.5
        self.layer.shadowRadius = 4
        self.layer.shadowOffset = CGSize.zero
    }
}
